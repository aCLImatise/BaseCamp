version 1.0

task MysqlConfig {
  input {
    Boolean? cflags
    Boolean? cxxflags
    Boolean? include
    Boolean? libs
    Boolean? libs_r
    Boolean? plugin_dir
    Boolean? socket
    String? variable
  }
  command <<<
    mysql_config \
      ~{if (cflags) then "--cflags" else ""} \
      ~{if (cxxflags) then "--cxxflags" else ""} \
      ~{if (include) then "--include" else ""} \
      ~{if (libs) then "--libs" else ""} \
      ~{if (libs_r) then "--libs_r" else ""} \
      ~{if (plugin_dir) then "--plugindir" else ""} \
      ~{if (socket) then "--socket" else ""} \
      ~{if defined(variable) then ("--variable " +  '"' + variable + '"') else ""}
  >>>
  parameter_meta {
    cflags: "[-I/usr/local/include]"
    cxxflags: "[-I/usr/local/include]"
    include: "[-I/usr/local/include]"
    libs: "[-L/usr/local/lib -lmysqlclient -lpthread -lm -lrt -ldl]"
    libs_r: "[-L/usr/local/lib -lmysqlclient -lpthread -lm -lrt -ldl]"
    plugin_dir: "[/usr/local/lib/plugin]"
    socket: "[/tmp/mysql.sock]"
    variable: "VAR is one of:\\npkgincludedir [/usr/local/include]\\npkglibdir     [/usr/local/lib]\\nplugindir     [/usr/local/lib/plugin]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}