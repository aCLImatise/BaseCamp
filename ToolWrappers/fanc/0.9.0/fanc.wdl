version 1.0

task Fanc {
  input {
    Boolean? verbose
    Boolean? silent
    File? log_file
    String? email
    String? smtp_server
    String? smtp_username
    String? smtp_password
    String? smtp_sender_address
    String subcommand_to_run
  }
  command <<<
    fanc \
      ~{subcommand_to_run} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(email) then ("--email " +  '"' + email + '"') else ""} \
      ~{if defined(smtp_server) then ("--smtp-server " +  '"' + smtp_server + '"') else ""} \
      ~{if defined(smtp_username) then ("--smtp-username " +  '"' + smtp_username + '"') else ""} \
      ~{if defined(smtp_password) then ("--smtp-password " +  '"' + smtp_password + '"') else ""} \
      ~{if defined(smtp_sender_address) then ("--smtp-sender-address " +  '"' + smtp_sender_address + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fanc:0.9.0--py37hf01694f_0"
  }
  parameter_meta {
    verbose: "Set verbosity level: Can be chained like \\\"-vvv\\\" to\\nincrease verbosity. Default is to show errors,\\nwarnings, and info messages (same as \\\"-vv\\\"). \\\"-v\\\"\\nshows only errors and warnings, \\\"-vvv\\\" shows errors,\\nwarnings, info, and debug messages."
    silent: "Do not print log messages to command line."
    log_file: "Path to file in which to save log."
    email: "Email address for fanc command summary."
    smtp_server: "SMTP server in the form smtp.server.com[:port]."
    smtp_username: "SMTP username."
    smtp_password: "SMTP password."
    smtp_sender_address: "SMTP sender email address.\\n"
    subcommand_to_run: "Subcommand to run"
  }
  output {
    File out_stdout = stdout()
  }
}