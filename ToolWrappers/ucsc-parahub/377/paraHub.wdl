version 1.0

task ParaHub {
  input {
    Int? spokes
    Int? job_check_period
    Int? machine_check_period
    Float? subnet
    Int? next_job_id
    Int? log_facility
    File? log_min_priority
    File? log
    Boolean? debug
    Boolean? no_resume
    Int? ram_unit
    Int? default_job_ram
  }
  command <<<
    paraHub \
      ~{if defined(spokes) then ("-spokes " +  '"' + spokes + '"') else ""} \
      ~{if defined(job_check_period) then ("-jobCheckPeriod " +  '"' + job_check_period + '"') else ""} \
      ~{if defined(machine_check_period) then ("-machineCheckPeriod " +  '"' + machine_check_period + '"') else ""} \
      ~{if defined(subnet) then ("-subnet " +  '"' + subnet + '"') else ""} \
      ~{if defined(next_job_id) then ("-nextJobId " +  '"' + next_job_id + '"') else ""} \
      ~{if defined(log_facility) then ("-logFacility " +  '"' + log_facility + '"') else ""} \
      ~{if defined(log_min_priority) then ("-logMinPriority " +  '"' + log_min_priority + '"') else ""} \
      ~{if defined(log) then ("-log " +  '"' + log + '"') else ""} \
      ~{if (debug) then "-debug" else ""} \
      ~{if (no_resume) then "-noResume" else ""} \
      ~{if defined(ram_unit) then ("-ramUnit " +  '"' + ram_unit + '"') else ""} \
      ~{if defined(default_job_ram) then ("-defaultJobRam " +  '"' + default_job_ram + '"') else ""}
  >>>
  parameter_meta {
    spokes: "Number of processes that feed jobs to nodes - default 30."
    job_check_period: "Minutes between checking on job - default 10."
    machine_check_period: "Minutes between checking on machine - default 20."
    subnet: "Only accept connections from subnet (example 192.168)."
    next_job_id: "Starting job ID number."
    log_facility: "Log to the specified syslog facility - default local0."
    log_min_priority: "minimum syslog priority to log, also filters file logging.\\ndefaults to \\\"warn\\\""
    log: "Log to file instead of syslog."
    debug: "Don't daemonize"
    no_resume: "Don't try to reconnect with jobs running on nodes."
    ram_unit: "Number of bytes of RAM in the base unit used by the jobs.\\nDefault is RAM on node divided by number of cpus on node.\\nShorthand expressions allow t,g,m,k for tera, giga, mega, kilo.\\ne.g. 4g = 4 Gigabytes."
    default_job_ram: "Number of ram units in a job has no specified ram usage.\\nDefaults to 1.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}