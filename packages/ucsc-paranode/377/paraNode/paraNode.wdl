version 1.0

task ParaNode {
  input {
    Int? log_facility
    File? log_min_priority
    File? log
    Boolean? debug
    String? hub
    Int? umask
    File? user_path
    Boolean? sys_path
    String? env
    File? random_delay
    Int? cpu
  }
  command <<<
    paraNode \
      ~{if defined(log_facility) then ("-logFacility " +  '"' + log_facility + '"') else ""} \
      ~{if defined(log_min_priority) then ("-logMinPriority " +  '"' + log_min_priority + '"') else ""} \
      ~{if defined(log) then ("-log " +  '"' + log + '"') else ""} \
      ~{if (debug) then "-debug" else ""} \
      ~{if defined(hub) then ("-hub " +  '"' + hub + '"') else ""} \
      ~{if defined(umask) then ("-umask " +  '"' + umask + '"') else ""} \
      ~{if defined(user_path) then ("-userPath " +  '"' + user_path + '"') else ""} \
      ~{if (sys_path) then "-sysPath" else ""} \
      ~{if defined(env) then ("-env " +  '"' + env + '"') else ""} \
      ~{if defined(random_delay) then ("-randomDelay " +  '"' + random_delay + '"') else ""} \
      ~{if defined(cpu) then ("-cpu " +  '"' + cpu + '"') else ""}
  >>>
  parameter_meta {
    log_facility: "Log to the specified syslog facility - default local0."
    log_min_priority: "minimum syslog priority to log, also filters file logging.\\ndefaults to \\\"warn\\\""
    log: "Log to file instead of syslog."
    debug: "Don't daemonize"
    hub: "Restrict access to connections from hub."
    umask: "Set umask to run under - default 002."
    user_path: ":bin/i386  User dirs to add to path."
    sys_path: "=/sbin:/local/bin  System dirs to add to path."
    env: "=value - add environment variable to jobs.  Maybe repeated."
    random_delay: "Up to this many milliseconds of random delay before\\nstarting a job.  This is mostly to avoid swamping NFS with\\nfile opens when loading up an idle cluster.  Also it limits\\nthe impact on the hub of very short jobs. Default 5000."
    cpu: "Number of CPUs to use - default 1."
  }
  output {
    File out_stdout = stdout()
  }
}