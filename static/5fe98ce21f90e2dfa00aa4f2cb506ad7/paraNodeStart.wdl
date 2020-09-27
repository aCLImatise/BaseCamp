version 1.0

task ParaNodeStart {
  input {
    Int? log_facility
    File? log_min_priority
    File? log
    Int? umask
    Int? random_delay
    File? user_path
    Boolean? sys_path
    String? env
    String? hub
    Boolean? rsh
  }
  command <<<
    paraNodeStart \
      ~{if defined(log_facility) then ("-logFacility " +  '"' + log_facility + '"') else ""} \
      ~{if defined(log_min_priority) then ("-logMinPriority " +  '"' + log_min_priority + '"') else ""} \
      ~{if defined(log) then ("-log " +  '"' + log + '"') else ""} \
      ~{if defined(umask) then ("-umask " +  '"' + umask + '"') else ""} \
      ~{if defined(random_delay) then ("-randomDelay " +  '"' + random_delay + '"') else ""} \
      ~{if defined(user_path) then ("-userPath " +  '"' + user_path + '"') else ""} \
      ~{if (sys_path) then "-sysPath" else ""} \
      ~{if defined(env) then ("-env " +  '"' + env + '"') else ""} \
      ~{if defined(hub) then ("-hub " +  '"' + hub + '"') else ""} \
      ~{if (rsh) then "-rsh" else ""}
  >>>
  parameter_meta {
    log_facility: "Log to the specified syslog facility - default local0."
    log_min_priority: "minimum syslog priority to log, also filters file logging.\\ndefaults to \\\"warn\\\""
    log: "Log to file instead of syslog."
    umask: "Set umask to run under - default 002."
    random_delay: "Set random start delay in milliseconds - default 5000."
    user_path: ":bin/i386  User dirs to add to path."
    sys_path: "=/sbin:/local/bin  System dirs to add to path."
    env: "=value - add environment variable to jobs.  Maybe repeated."
    hub: "Nodes will ignore messages from elsewhere."
    rsh: "=/path/to/rsh/like/command."
  }
  output {
    File out_stdout = stdout()
  }
}