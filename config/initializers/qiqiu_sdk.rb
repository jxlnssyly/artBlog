#!/usr/bin/env ruby

require 'qiniu'

Qiniu.establish_connection! :access_key => 'nr6c3fEKZkXNHxxobZTy201ePyIJVSF7JggpKkOv',
                            :secret_key => '5cYm9fNq6lx50BS_hJD-EwAfTAyZ2lHjqKN6wOQx'

Rails.application.config.qiniu_domain = "oucgp3rsu.bkt.clouddn.com"