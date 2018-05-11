git clone git://github.com/sstephenson/rbenv.git .rbenv
mkdir -p ~/.rbenv/plugins
~/.rbenv/plugins
git clone git://github.com/sstephenson/ruby-build.git
~
rbenv install --list
rbenv install 2.5.1
rbenv global 2.5.1
gem install rails --version="5.1.6"
rbenv rehash
