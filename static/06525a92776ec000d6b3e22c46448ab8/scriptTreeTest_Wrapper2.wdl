version 1.0

task ScriptTreeTestWrapper2.py {
  input {
    Boolean? logoff
    Boolean? loginfo
    Boolean? log_debug
    String? loglevel
    String? log_file
    Boolean? rotating_logging
    String? job_tree
    Boolean? stats
    String? batch_system
    Int? max_threads
    String? parasol_command
    String? default_memory
    String? default_cpu
    Int? max_cpus
    Int? max_memory
    String? retry_count
    Int? max_job_duration
    String? rescue_jobs_frequency
    String? big_batch_system
    String? big_memory_threshold
    String? big_cpu_threshold
    String? big_max_cpus
    String? big_max_memory
    String? job_time
    Int? max_log_file_size
    String? command_run_generate
  }
  command <<<
    scriptTreeTest_Wrapper2.py \
      ~{true="--logOff" false="" logoff} \
      ~{true="--logInfo" false="" loginfo} \
      ~{true="--logDebug" false="" log_debug} \
      ~{if defined(loglevel) then ("--logLevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(log_file) then ("--logFile " +  '"' + log_file + '"') else ""} \
      ~{true="--rotatingLogging" false="" rotating_logging} \
      ~{if defined(job_tree) then ("--jobTree " +  '"' + job_tree + '"') else ""} \
      ~{true="--stats" false="" stats} \
      ~{if defined(batch_system) then ("--batchSystem " +  '"' + batch_system + '"') else ""} \
      ~{if defined(max_threads) then ("--maxThreads " +  '"' + max_threads + '"') else ""} \
      ~{if defined(parasol_command) then ("--parasolCommand " +  '"' + parasol_command + '"') else ""} \
      ~{if defined(default_memory) then ("--defaultMemory " +  '"' + default_memory + '"') else ""} \
      ~{if defined(default_cpu) then ("--defaultCpu " +  '"' + default_cpu + '"') else ""} \
      ~{if defined(max_cpus) then ("--maxCpus " +  '"' + max_cpus + '"') else ""} \
      ~{if defined(max_memory) then ("--maxMemory " +  '"' + max_memory + '"') else ""} \
      ~{if defined(retry_count) then ("--retryCount " +  '"' + retry_count + '"') else ""} \
      ~{if defined(max_job_duration) then ("--maxJobDuration " +  '"' + max_job_duration + '"') else ""} \
      ~{if defined(rescue_jobs_frequency) then ("--rescueJobsFrequency " +  '"' + rescue_jobs_frequency + '"') else ""} \
      ~{if defined(big_batch_system) then ("--bigBatchSystem " +  '"' + big_batch_system + '"') else ""} \
      ~{if defined(big_memory_threshold) then ("--bigMemoryThreshold " +  '"' + big_memory_threshold + '"') else ""} \
      ~{if defined(big_cpu_threshold) then ("--bigCpuThreshold " +  '"' + big_cpu_threshold + '"') else ""} \
      ~{if defined(big_max_cpus) then ("--bigMaxCpus " +  '"' + big_max_cpus + '"') else ""} \
      ~{if defined(big_max_memory) then ("--bigMaxMemory " +  '"' + big_max_memory + '"') else ""} \
      ~{if defined(job_time) then ("--jobTime " +  '"' + job_time + '"') else ""} \
      ~{if defined(max_log_file_size) then ("--maxLogFileSize " +  '"' + max_log_file_size + '"') else ""} \
      ~{if defined(command_run_generate) then ("--command " +  '"' + command_run_generate + '"') else ""}
  >>>
  parameter_meta {
    logoff: "Turn off logging. (default is CRITICAL)"
    loginfo: "Turn on logging at INFO level. (default is CRITICAL)"
    log_debug: "Turn on logging at DEBUG level. (default is CRITICAL)"
    loglevel: "Log at level (may be either OFF/INFO/DEBUG/CRITICAL). (default is CRITICAL)"
    log_file: "File to log in"
    rotating_logging: "Turn on rotating logging, which prevents log files getting too big."
    job_tree: "Directory in which to place job management files and the global accessed temporary file directories(this needs to be globally accessible by all machines running jobs). If you pass an existing directory it will check if it's a valid existing job tree, then try and restart the jobs in it. The default=./jobTree"
    stats: "Records statistics about the job-tree to be used by jobTreeStats. default=False"
    batch_system: "The type of batch system to run the job(s) with, currently can be 'singleMachine'/'parasol'/'acidTest'/ 'gridEngine'/'lsf'. default=singleMachine"
    max_threads: "The maximum number of threads (technically processes at this point) to use when running in single machine mode. Increasing this will allow more jobs to run concurrently when running on a single machine. default=4"
    parasol_command: "The command to run the parasol program default=parasol"
    default_memory: "The default amount of memory to request for a job (in bytes), by default is 2^31 = 2 gigabytes, default=2147483648"
    default_cpu: "The default the number of cpus to dedicate a job. default=1"
    max_cpus: "The maximum number of cpus to request from the batch system at any one time. default=9223372036854775807"
    max_memory: "The maximum amount of memory to request from the batch system at any one time. default=9223372036854775807"
    retry_count: "Number of times to retry a failing job before giving up and labeling job failed. default=0"
    max_job_duration: "Maximum runtime of a job (in seconds) before we kill it (this is a lower bound, and the actual time before killing the job may be longer). default=9223372036854775807"
    rescue_jobs_frequency: "Period of time to wait (in seconds) between checking for missing/overlong jobs, that is jobs which get lost by the batch system. Expert parameter. (default is set by the batch system)"
    big_batch_system: "The batch system to run for jobs with larger memory/cpus requests, currently can be 'singleMachine'/'parasol'/'acidTest'/'gridEngine'. default=none"
    big_memory_threshold: "The memory threshold above which to submit to the big queue. default=9223372036854775807"
    big_cpu_threshold: "The cpu threshold above which to submit to the big queue. default=9223372036854775807"
    big_max_cpus: "The maximum number of big batch system cpus to allow at one time on the big queue. default=9223372036854775807"
    big_max_memory: "The maximum amount of memory to request from the big batch system at any one time. default=9223372036854775807"
    job_time: "The approximate time (in seconds) that you'd like a list of child jobs to be run serially before being parallelized. This parameter allows one to avoid over parallelizing tiny jobs, and therefore paying significant scheduling overhead, by running tiny jobs in series on a single node/core of the cluster. default=30"
    max_log_file_size: "The maximum size of a job log file to keep (in bytes), log files larger than this will be truncated to the last X bytes. Default is 50 kilobytes, default=50120"
    command_run_generate: "The command to run (which will generate subsequent jobs). This is deprecated"
  }
}