version 1.0

task Monoservice2 {
  input {
    Boolean? directory_working_directory
    Boolean? lock_file_lock
    Boolean? syslog_name_name
    Boolean? service_name_name
    Boolean? debug
    Boolean? no_daemon
  }
  command <<<
    mono_service2 \
      ~{if (directory_working_directory) then "-d" else ""} \
      ~{if (lock_file_lock) then "-l" else ""} \
      ~{if (syslog_name_name) then "-m" else ""} \
      ~{if (service_name_name) then "-n" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (no_daemon) then "--no-daemon" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    directory_working_directory: ":<directory>         Working directory"
    lock_file_lock: ":<lock file>         Lock file (default is /tmp/<service>.lock)"
    syslog_name_name: ":<syslog name>       Name to show in syslog"
    service_name_name: ":<service name>      Name of service to start (default is first defined)"
    debug: "Do not send to background nor redirect input/output"
    no_daemon: "Do not send to background nor redirect input/output"
  }
  output {
    File out_stdout = stdout()
  }
}