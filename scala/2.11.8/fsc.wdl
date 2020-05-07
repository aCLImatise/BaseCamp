version 1.0

task Fsc {
  input {
    Boolean ipv4Ipv4
    String maxMaxIdle
    String portPort
    Boolean resetReset
    Boolean serverServer
    Boolean shutdownShutdown
    String? sourceSourceFiles
  }
  command <<<
    fsc \
      ~{sourceSourceFiles} \
      ~{true="-ipv4" false="" ipv4Ipv4} \
      ~{if defined(maxMaxIdle) then ("-max-idle " +  '"' + maxMaxIdle + '"') else ""} \
      ~{if defined(portPort) then ("-port " +  '"' + portPort + '"') else ""} \
      ~{true="-reset" false="" resetReset} \
      ~{true="-server" false="" serverServer} \
      ~{true="-shutdown" false="" shutdownShutdown}
  >>>
}