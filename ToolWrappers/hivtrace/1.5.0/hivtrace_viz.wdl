version 1.0

task HivtraceViz {
  input {
    Float? hostname
    Int? port
    File? browser
    Boolean? server
    File filename
  }
  command <<<
    hivtrace_viz \
      ~{filename} \
      ~{if defined(hostname) then ("--hostname " +  '"' + hostname + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if defined(browser) then ("--browser " +  '"' + browser + '"') else ""} \
      ~{if (server) then "--server" else ""}
  >>>
  parameter_meta {
    hostname: "hostname to bind to (default: 127.0.0.1"
    port: "port to bind to; if this port is already in use a free\\nport will be selected automatically (default: 8080)"
    browser: "name of webbrowser to launch as described in the\\ndocumentation of Python's webbrowser module:\\nhttps://docs.python.org/3/library/webbrowser.html"
    server: "start hivtrace in server-only mode--no attempt will be\\nto open a browser\\n"
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}