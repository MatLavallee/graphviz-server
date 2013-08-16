log_level :info
WORK_DIR = File.expand_path File.dirname(__FILE__)
cookbook_path %w(cookbooks).map { |p| File.join(WORK_DIR, p) }