version 1.0

task Pm4ngsserver {
  input {
    Boolean? no_browser
    String? ip
    String? port
    Boolean? v
    String localhost
  }
  command <<<
    pm4ngs_server \
      ~{localhost} \
      ~{if (no_browser) then "--no_browser" else ""} \
      ~{if defined(ip) then ("--ip " +  '"' + ip + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pm4ngs:0.0.5--py_0"
  }
  parameter_meta {
    no_browser: "Don't open the notebook in a browser after startup"
    ip: "The IP address the notebook server will listen on. Default:"
    port: ""
    v: ""
    localhost: "--port PORT    The port the notebook server will listen on. Default: 8888"
  }
  output {
    File out_stdout = stdout()
  }
}