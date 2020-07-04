version 1.0

task OmeroAdminStart {
  input {
    String? wait
    Boolean? force_rewrite
    Boolean? foreground
    String? user
    String? password
    File file
    String targets
  }
  command <<<
    omero admin start \
      ~{file} \
      ~{targets} \
      ~{if defined(wait) then ("--wait " +  '"' + wait + '"') else ""} \
      ~{true="--force-rewrite" false="" force_rewrite} \
      ~{true="--foreground" false="" foreground} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""}
  >>>
  parameter_meta {
    wait: "Seconds to wait for operation"
    force_rewrite: "Force the configuration to be rewritten before checking the server status"
    foreground: "Start server in foreground mode (no daemon/service)"
    user: "Windows Service Log On As user name."
    password: "Windows Service Log On As user password."
    file: "Application descriptor. If not provided, a default will be used"
    targets: "Targets within the application descriptor which  should  be activated. Common values are: \"debug\", \"trace\" "
  }
}