version 1.0

task Ace.pl {
  input {
    String hostHost
    String portPort
    String pathPath
    Boolean urlUrl
    String loginLogin
    String passPass
    Boolean tcshTcsh
    Boolean saveSave
    String execExec
  }
  command <<<
    ace.pl \
      ~{if defined(hostHost) then ("-host " +  '"' + hostHost + '"') else ""} \
      ~{if defined(portPort) then ("-port " +  '"' + portPort + '"') else ""} \
      ~{if defined(pathPath) then ("-path " +  '"' + pathPath + '"') else ""} \
      ~{true="-url" false="" urlUrl} \
      ~{if defined(loginLogin) then ("-login " +  '"' + loginLogin + '"') else ""} \
      ~{if defined(passPass) then ("-pass " +  '"' + passPass + '"') else ""} \
      ~{true="-tcsh" false="" tcshTcsh} \
      ~{true="-save" false="" saveSave} \
      ~{if defined(execExec) then ("-exec " +  '"' + execExec + '"') else ""}
  >>>
}