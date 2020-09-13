version 1.0

task Acepl {
  input {
    String? host
    Int? port
    File? path
    Boolean? url
    String? login
    String? pass
    Boolean? tcsh
    Boolean? save
    String? exec
  }
  command <<<
    ace_pl \
      ~{if defined(host) then ("-host " +  '"' + host + '"') else ""} \
      ~{if defined(port) then ("-port " +  '"' + port + '"') else ""} \
      ~{if defined(path) then ("-path " +  '"' + path + '"') else ""} \
      ~{if (url) then "-url" else ""} \
      ~{if defined(login) then ("-login " +  '"' + login + '"') else ""} \
      ~{if defined(pass) then ("-pass " +  '"' + pass + '"') else ""} \
      ~{if (tcsh) then "-tcsh" else ""} \
      ~{if (save) then "-save" else ""} \
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
  output {
    File out_stdout = stdout()
  }
}