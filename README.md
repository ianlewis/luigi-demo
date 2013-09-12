luigi-demo
==========

### Requirements

1. vagrant
2. virtualbox
3. ruby/gem
4. librarian
6. git

### Installing requirements

This environment requires vagrant and libarian to be installed so
that the proper cookbooks can be downloaded.

1. install `virtualbox`.
2. install `vagrant`.
4. install `ruby` and `gem`
5. `gem install librarian`

### Bringing Up the Environment

The `vagrant up` command will bring up the environment and install
all the necessary software including the Python interpreter, luigi,
the Java interpreter, and the CDH4 distribution of hadoop.

Be sure to give your VM at least 1GB of memory so that memory isn't
exhausted.

1. `git clone git@github.com:IanLewis/luigi-demo.git`
2. `cd luigi-demo`
3. `librarian-chef install`
4. `vagrant up`

The install can take quite a while so I would get a cup of coffee
after running vagrant for the first time.

After you get the VM up and running you should be able to view the
luigi visualization tool at http://192.168.30.10:8082/

### Update the Environment

You can update the environment once it's been installed. Generally
you won't have to do this but if you need to make changes to the
provided cookbooks you can run these commands to update your environment.

1. `cd luigi-demo`
2. `librarian-chef update`
3. `vagrant provision`

### Running luigi

You can run the luigi demos from the `/var/vagrant_data/` directory. The following example
can be run without hadoop and simply counts the words in a file.

    $ cd /var/vagrant_data/
    $ python bin/top_artists.py WordCount --date-interval 2013-10-29.txt --local-scheduler

You can run an example hadoop job like this:

    $ cd /var/vagrant_data/
    $ python bin/top_artists.py Top10Artists --date-interval 2012-08 --workers 3 --use_hadoop
