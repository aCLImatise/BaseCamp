version 1.0

task ScriptTreeTestWrapperpy {
  input {
    Boolean? logoff
    Boolean? loginfo
    Boolean? log_debug
    String? loglevel
    File? log_file
    Boolean? rotating_logging
    File? job_tree
    Boolean? stats
    String? batch_system
    Int? max_threads
    String? parasol_command
    Int? default_memory
    Int? default_cpu
    Int? max_cpus
    Int? max_memory
    Int? retry_count
    Int? max_job_duration
    String? rescue_jobs_frequency
    String? big_batch_system
    Int? big_memory_threshold
    Int? big_cpu_threshold
    Int? big_max_cpus
    Int? big_max_memory
    Int? job_time
    Int? max_log_file_size
    String? command_run_generate
  }
  command <<<
    scriptTreeTest_Wrapper_py \
      ~{if (logoff) then "--logOff" else ""} \
      ~{if (loginfo) then "--logInfo" else ""} \
      ~{if (log_debug) then "--logDebug" else ""} \
      ~{if defined(loglevel) then ("--logLevel " +  '"' + loglevel + '"') else ""} \
      ~{if defined(log_file) then ("--logFile " +  '"' + log_file + '"') else ""} \
      ~{if (rotating_logging) then "--rotatingLogging" else ""} \
      ~{if defined(job_tree) then ("--jobTree " +  '"' + job_tree + '"') else ""} \
      ~{if (stats) then "--stats" else ""} \
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
    loglevel: "Log at level (may be either OFF/INFO/DEBUG/CRITICAL).\\n(default is CRITICAL)"
    log_file: "File to log in"
    rotating_logging: "Turn on rotating logging, which prevents log files\\ngetting too big."
    job_tree: "Directory in which to place job management files and\\nthe global accessed temporary file directories(this\\nneeds to be globally accessible by all machines\\nrunning jobs). If you pass an existing directory it\\nwill check if it's a valid existing job tree, then try\\nand restart the jobs in it. The default=./jobTree"
    stats: "Records statistics about the job-tree to be used by\\njobTreeStats. default=False"
    batch_system: "The type of batch system to run the job(s) with,\\ncurrently can be 'singleMachine'/'parasol'/'acidTest'/\\n'gridEngine'/'lsf'. default=singleMachine"
    max_threads: "The maximum number of threads (technically processes\\nat this point) to use when running in single machine\\nmode. Increasing this will allow more jobs to run\\nconcurrently when running on a single machine.\\ndefault=4"
    parasol_command: "The command to run the parasol program default=parasol"
    default_memory: "The default amount of memory to request for a job (in\\nbytes), by default is 2^31 = 2 gigabytes,\\ndefault=2147483648"
    default_cpu: "The default the number of cpus to dedicate a job.\\ndefault=1"
    max_cpus: "The maximum number of cpus to request from the batch\\nsystem at any one time. default=9223372036854775807"
    max_memory: "The maximum amount of memory to request from the batch\\nsystem at any one time. default=9223372036854775807"
    retry_count: "Number of times to retry a failing job before giving\\nup and labeling job failed. default=0"
    max_job_duration: "Maximum runtime of a job (in seconds) before we kill\\nit (this is a lower bound, and the actual time before\\nkilling the job may be longer).\\ndefault=9223372036854775807"
    rescue_jobs_frequency: "Period of time to wait (in seconds) between checking\\nfor missing/overlong jobs, that is jobs which get lost\\nby the batch system. Expert parameter. (default is set\\nby the batch system)"
    big_batch_system: "The batch system to run for jobs with larger\\nmemory/cpus requests, currently can be\\n'singleMachine'/'parasol'/'acidTest'/'gridEngine'.\\ndefault=none"
    big_memory_threshold: "The memory threshold above which to submit to the big\\nqueue. default=9223372036854775807"
    big_cpu_threshold: "The cpu threshold above which to submit to the big\\nqueue. default=9223372036854775807"
    big_max_cpus: "The maximum number of big batch system cpus to allow\\nat one time on the big queue.\\ndefault=9223372036854775807"
    big_max_memory: "The maximum amount of memory to request from the big\\nbatch system at any one time.\\ndefault=9223372036854775807"
    job_time: "The approximate time (in seconds) that you'd like a\\nlist of child jobs to be run serially before being\\nparallelized. This parameter allows one to avoid over\\nparallelizing tiny jobs, and therefore paying\\nsignificant scheduling overhead, by running tiny jobs\\nin series on a single node/core of the cluster.\\ndefault=30"
    max_log_file_size: "The maximum size of a job log file to keep (in bytes),\\nlog files larger than this will be truncated to the\\nlast X bytes. Default is 50 kilobytes, default=50120"
    command_run_generate: "The command to run (which will generate subsequent\\njobs). This is deprecated\\n"
  }
  output {
    File out_stdout = stdout()
  }
}