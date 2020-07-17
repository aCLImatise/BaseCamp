version 1.0

task MysqlConfig {
  input {
    String pkg_libdir
    String plugin_dir
  }
  command <<<
    mysql_config \
      ~{pkg_libdir} \
      ~{plugin_dir}
  >>>
  parameter_meta {
    pkg_libdir: "[/tmp/tmp5kms2cfc/lib]"
    plugin_dir: "[/tmp/tmp5kms2cfc/lib/plugin]"
  }
}