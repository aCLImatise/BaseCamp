version 1.0

task Heartbeatwrapper {
  input {
    File? exit_file
    Float? rate
    File? heartbeat_file
    Directory? directory
    String system_call_joined
  }
  command <<<
    heartbeat_wrapper \
      ~{system_call_joined} \
      ~{if defined(exit_file) then ("--exit-file " +  '"' + exit_file + '"') else ""} \
      ~{if defined(rate) then ("--rate " +  '"' + rate + '"') else ""} \
      ~{if defined(heartbeat_file) then ("--heartbeat-file " +  '"' + heartbeat_file + '"') else ""} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""}
  >>>
  parameter_meta {
    exit_file: "[--directory DIRECTORY]"
    rate: "Heartbeat rate, in seconds (default: 1.0)"
    heartbeat_file: "Path to heartbeat file. The first line will have the\\nformat '0 {pid} {pgid}\\n'. The rest are just elapsed\\ntime (default: None)"
    directory: "Directory in which to run COMMAND. (default: .)"
    system_call_joined: "System call (to be joined by \\\" \\\"). We will block on\\nthis and return its result."
  }
  output {
    File out_stdout = stdout()
  }
}