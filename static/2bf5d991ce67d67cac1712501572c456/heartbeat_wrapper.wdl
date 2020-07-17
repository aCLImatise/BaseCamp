version 1.0

task HeartbeatWrapper {
  input {
    String? rate
    String? heartbeat_file
    String? exit_file
    Directory? directory
    String system_call_joined
  }
  command <<<
    heartbeat-wrapper \
      ~{system_call_joined} \
      ~{if defined(rate) then ("--rate " +  '"' + rate + '"') else ""} \
      ~{if defined(heartbeat_file) then ("--heartbeat-file " +  '"' + heartbeat_file + '"') else ""} \
      ~{if defined(exit_file) then ("--exit-file " +  '"' + exit_file + '"') else ""} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""}
  >>>
  parameter_meta {
    rate: "Heartbeat rate, in seconds (default: 1.0)"
    heartbeat_file: "Path to heartbeat file. The first line will have the format '0 {pid} {pgid}\n'. The rest are just elapsed time (default: None)"
    exit_file: "Path to exit sentinel file. At end, it will have the format '{exit_code}' (default: None)"
    directory: "Directory in which to run COMMAND. (default: .)"
    system_call_joined: "System call (to be joined by \" \"). We will block on this and return its result."
  }
}