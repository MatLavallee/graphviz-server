# Install gdebi
# It is used instead of dpkg because Graphviz has a lot of dependencies
package 'gdebi-core'

# Install Graphviz Library
local_deb_path = '/tmp/graphviz_lib.deb'

remote_file local_deb_path do
  source 'http://www.graphviz.org/pub/graphviz/stable/ubuntu/ub12.04/x86_64/libgraphviz4_2.32.0-1~precise_amd64.deb'
  mode 0777
  checksum 'd768ca405458b7cb4720a62c73b0e087a150b398c3e7e4bdc96e17ea39847382'
end

execute 'install libgraphiz deb' do
  command "gdebi -n #{local_deb_path}"
end

# Install Graphviz
local_deb_path = '/tmp/graphviz.deb'

remote_file local_deb_path do
  source 'http://www.graphviz.org/pub/graphviz/stable/ubuntu/ub12.04/x86_64/graphviz_2.32.0-1~precise_amd64.deb'
  mode 0777
  ignore_failure true
  checksum '3ad1ddd14b72fe7b68504b89221b73724c4018513a5abfe669d4a4f212a8a2aa'
end

execute 'install graphiz deb' do
  command "gdebi -n #{local_deb_path}"
end