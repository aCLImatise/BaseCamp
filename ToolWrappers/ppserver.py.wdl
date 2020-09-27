version 1.0

task Ppserverpy {
  input {
    Boolean? set_log_level
    String? _log_format
    Boolean? enable_autodiscovery_service
    Boolean? restart_worker_process
    Int? protocol_number_pickle
    File? path_config_file
    String? _interface_listen
    String? broadcast_address_autodiscovery
    String? _port_listen
    Int? number_workers_start
    String? _secret_authentication
    String? timeout_exit_exist
    String? socket_timeout_seconds
    File? file_write_pid
    Boolean? hd_ar
  }
  command <<<
    ppserver_py \
      ~{if (set_log_level) then "-d" else ""} \
      ~{if defined(_log_format) then ("-f " +  '"' + _log_format + '"') else ""} \
      ~{if (enable_autodiscovery_service) then "-a" else ""} \
      ~{if (restart_worker_process) then "-r" else ""} \
      ~{if defined(protocol_number_pickle) then ("-n " +  '"' + protocol_number_pickle + '"') else ""} \
      ~{if defined(path_config_file) then ("-c " +  '"' + path_config_file + '"') else ""} \
      ~{if defined(_interface_listen) then ("-i " +  '"' + _interface_listen + '"') else ""} \
      ~{if defined(broadcast_address_autodiscovery) then ("-b " +  '"' + broadcast_address_autodiscovery + '"') else ""} \
      ~{if defined(_port_listen) then ("-p " +  '"' + _port_listen + '"') else ""} \
      ~{if defined(number_workers_start) then ("-w " +  '"' + number_workers_start + '"') else ""} \
      ~{if defined(_secret_authentication) then ("-s " +  '"' + _secret_authentication + '"') else ""} \
      ~{if defined(timeout_exit_exist) then ("-t " +  '"' + timeout_exit_exist + '"') else ""} \
      ~{if defined(socket_timeout_seconds) then ("-k " +  '"' + socket_timeout_seconds + '"') else ""} \
      ~{if defined(file_write_pid) then ("-P " +  '"' + file_write_pid + '"') else ""} \
      ~{if (hd_ar) then "-hdar" else ""}
  >>>
  parameter_meta {
    set_log_level: ": set log level to debug"
    _log_format: ": log format"
    enable_autodiscovery_service: ": enable auto-discovery service"
    restart_worker_process: ": restart worker process after each task completion"
    protocol_number_pickle: ": protocol number for pickle module"
    path_config_file: ": path to config file"
    _interface_listen: ": interface to listen"
    broadcast_address_autodiscovery: ": broadcast address for auto-discovery service"
    _port_listen: ": port to listen"
    number_workers_start: ": number of workers to start"
    _secret_authentication: ": secret for authentication"
    timeout_exit_exist: ": timeout to exit if no connections with clients exist"
    socket_timeout_seconds: ": socket timeout in seconds"
    file_write_pid: ": file to write PID to"
    hd_ar: ""
  }
  output {
    File out_stdout = stdout()
  }
}