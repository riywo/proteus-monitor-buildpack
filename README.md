## INSTALL

    $ git clone git@github.com:riywo/proteus-monitor-buildpack.git
    $ cd proteus-monitor-buildpack
    $ git submodule init
    $ git submodule update
    $ bundle install
    $ bundle exec rake -T

    $ bundle exec rake ubuntu12.04_64
    $ ls ubuntu12.04_64/
    node_0.8.17_amd64.deb                 proteus-monitor-agent_0.0.1_amd64.deb

    $ bundle exec rake centos6.3_64
    $ ls centos6.3_64/
    node-0.8.17-1.x86_64.rpm                 proteus-monitor-agent-0.0.1-1.x86_64.rpm

## See also

- [ameba-proteus/proteus-monitor-agent · GitHub](https://github.com/ameba-proteus/proteus-monitor-agent)
