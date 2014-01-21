require 'vimrunner'
require 'vimrunner/rspec'

module Vimrunner
  class Server
    remove_const :VIMRC
    VIMRC  = '~/.vimrc'
  end
end

Vimrunner::RSpec.configure do |config|
  config.reuse_server = true
  
  config.start_vim do
    vim = Vimrunner.start_gvim
    vim.source('~/.gvimrc')
    vim
  end
end
