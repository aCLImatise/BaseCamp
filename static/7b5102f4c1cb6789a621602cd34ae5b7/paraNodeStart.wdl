version 1.0

task ParaNodeStart {
  input {
    File? log
    String? umask
    String? random_delay
    String? user_path
    Boolean? sys_path
    String? env
    String? hub
    Boolean? rsh
    String machine_list
  }
  command <<<
    paraNodeStart \
      ~{machine_list} \
      ~{if defined(log) then ("-log " +  '"' + log + '"') else ""} \
      ~{if defined(umask) then ("-umask " +  '"' + umask + '"') else ""} \
      ~{if defined(random_delay) then ("-randomDelay " +  '"' + random_delay + '"') else ""} \
      ~{if defined(user_path) then ("-userPath " +  '"' + user_path + '"') else ""} \
      ~{true="-sysPath" false="" sys_path} \
      ~{if defined(env) then ("-env " +  '"' + env + '"') else ""} \
      ~{if defined(hub) then ("-hub " +  '"' + hub + '"') else ""} \
      ~{true="-rsh" false="" rsh}
  >>>
  parameter_meta {
    log: "Log to file instead of syslog."
    umask: "Set umask to run under - default 002."
    random_delay: "Set random start delay in milliseconds - default 5000."
    user_path: ":bin/i386  User dirs to add to path."
    sys_path: "=/sbin:/local/bin  System dirs to add to path."
    env: "=value - add environment variable to jobs.  Maybe repeated."
    hub: "Nodes will ignore messages from elsewhere."
    rsh: "=/path/to/rsh/like/command."
    machine_list: ""
  }
}