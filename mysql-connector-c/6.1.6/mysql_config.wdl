version 1.0

task MysqlConfig {
  input {
    String? pkgPkgLibdir
    String? pluginPluginDir
  }
  command <<<
    mysql_config \
      ~{pkgPkgLibdir} \
      ~{pluginPluginDir}
  >>>
}