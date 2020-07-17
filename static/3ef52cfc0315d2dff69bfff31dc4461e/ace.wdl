version 1.0

task Ace.pl {
  input {
    String? host
    String? port
    String? path
    Boolean? url
    String? login
    String? pass
    Boolean? tcsh
    Boolean? save
    String? exec
  }
  command <<<
    ace.pl \
      ~{if defined(host) then ("-host " +  '"' + host + '"') else ""} \
      ~{if defined(port) then ("-port " +  '"' + port + '"') else ""} \
      ~{if defined(path) then ("-path " +  '"' + path + '"') else ""} \
      ~{true="-url" false="" url} \
      ~{if defined(login) then ("-login " +  '"' + login + '"') else ""} \
      ~{if defined(pass) then ("-pass " +  '"' + pass + '"') else ""} \
      ~{true="-tcsh" false="" tcsh} \
      ~{true="-save" false="" save} \
      ~{if defined(exec) then ("-exec " +  '"' + exec + '"') else ""}
  >>>
  parameter_meta {
    host: "Server host (localhost)"
    port: "Server port (200005)"
    path: "Local database path (no default)"
    url: "<url>       Server URL (see below"
    login: "Username"
    pass: "Password"
    tcsh: "Use T-shell completion mode"
    save: "Save database updates automatically"
    exec: "Run a command and quit"
  }
}