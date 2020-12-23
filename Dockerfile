FROM perl:5.32.0-buster as foundation

# Do some prep work

# install catalyst, 
RUN perl -MCPAN -e 'install Task::Catalyst'
RUN perl -MCPAN -e 'install Catalyst::Devel'


# install foundation modules
RUN cpanm Catalyst::Plugin::StackTrace
RUN cpanm Catalyst::Model::DBIC::Schema
RUN cpanm DBIx::Class::Schema::Loader 
RUN cpanm MooseX::NonMoose
RUN cpanm Params::Validate
RUN cpanm Catalyst::Controller::REST
RUN cpanm Params::ValidationCompiler
RUN cpanm Catalyst::Plugin::ConfigLoader::Environment
RUN cpanm DDP
RUN cpanm Config::YAML
RUN cpanm JSON
# ^^ this needs to be a cpanfile.


RUN apt-get update

FROM foundation as app

RUN echo "======== APP BUILD ========"

# Section for adding in the code

# Add the code
COPY PG-Jenkins/ .

FROM app as test

RUN echo "======== TESTING BUILD ========"

ENTRYPOINT [ "prove", "-Ilib/", "t/" ]

