version 1.0

task HivtraceViz {
  input {
    String hostnameHostname
    String portPort
    File browserBrowser
    Boolean serverServer
    File? filenameFilename
  }
  command <<<
    hivtrace_viz \
      ~{filenameFilename} \
      ~{if defined(hostnameHostname) then ("--hostname " +  '"' + hostnameHostname + '"') else ""} \
      ~{if defined(portPort) then ("--port " +  '"' + portPort + '"') else ""} \
      ~{if defined(browserBrowser) then ("--browser " +  '"' + browserBrowser + '"') else ""} \
      ~{true="--server" false="" serverServer}
  >>>
}