version 1.0

task Bottlepy {
  input {
    String? bind
    String? server
    String? plugin
    Boolean? debug
    Boolean? reload
    String app
  }
  command <<<
    bottle_py \
      ~{app} \
      ~{if defined(bind) then ("--bind " +  '"' + bind + '"') else ""} \
      ~{if defined(server) then ("--server " +  '"' + server + '"') else ""} \
      ~{if defined(plugin) then ("--plugin " +  '"' + plugin + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (reload) then "--reload" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bind: "bind socket to ADDRESS."
    server: "use SERVER as backend."
    plugin: "install additional plugin/s."
    debug: "start server in debug mode."
    reload: "auto-reload on file changes."
    app: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}