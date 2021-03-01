version 1.0

task PyqiServehtmlinterface {
  input {
    Int? port
    String? interface_module
  }
  command <<<
    pyqi serve_html_interface \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if defined(interface_module) then ("--interface-module " +  '"' + interface_module + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    port: "The port to run the server on [default: 8080]"
    interface_module: "The module to serve the interface for [REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}