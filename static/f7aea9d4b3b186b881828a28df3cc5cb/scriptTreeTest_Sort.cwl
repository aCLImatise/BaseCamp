class: CommandLineTool
id: scriptTreeTest_Sort.py.cwl
inputs:
- id: logoff
  doc: Turn off logging. (default is CRITICAL)
  type: boolean
  inputBinding:
    prefix: --logOff
- id: loginfo
  doc: Turn on logging at INFO level. (default is CRITICAL)
  type: boolean
  inputBinding:
    prefix: --logInfo
- id: log_debug
  doc: Turn on logging at DEBUG level. (default is CRITICAL)
  type: boolean
  inputBinding:
    prefix: --logDebug
- id: loglevel
  doc: Log at level (may be either OFF/INFO/DEBUG/CRITICAL). (default is CRITICAL)
  type: string
  inputBinding:
    prefix: --logLevel
- id: log_file
  doc: File to log in
  type: string
  inputBinding:
    prefix: --logFile
- id: rotating_logging
  doc: Turn on rotating logging, which prevents log files getting too big.
  type: boolean
  inputBinding:
    prefix: --rotatingLogging
- id: job_tree
  doc: Directory in which to place job management files and the global accessed temporary
    file directories(this needs to be globally accessible by all machines running
    jobs). If you pass an existing directory it will check if it's a valid existing
    job tree, then try and restart the jobs in it. The default=./jobTree
  type: string
  inputBinding:
    prefix: --jobTree
- id: stats
  doc: Records statistics about the job-tree to be used by jobTreeStats. default=False
  type: boolean
  inputBinding:
    prefix: --stats
- id: batch_system
  doc: The type of batch system to run the job(s) with, currently can be 'singleMachine'/'parasol'/'acidTest'/
    'gridEngine'/'lsf'. default=singleMachine
  type: string
  inputBinding:
    prefix: --batchSystem
- id: max_threads
  doc: The maximum number of threads (technically processes at this point) to use
    when running in single machine mode. Increasing this will allow more jobs to run
    concurrently when running on a single machine. default=4
  type: long
  inputBinding:
    prefix: --maxThreads
- id: parasol_command
  doc: The command to run the parasol program default=parasol
  type: string
  inputBinding:
    prefix: --parasolCommand
- id: default_memory
  doc: The default amount of memory to request for a job (in bytes), by default is
    2^31 = 2 gigabytes, default=2147483648
  type: string
  inputBinding:
    prefix: --defaultMemory
- id: default_cpu
  doc: The default the number of cpus to dedicate a job. default=1
  type: string
  inputBinding:
    prefix: --defaultCpu
- id: max_cpus
  doc: The maximum number of cpus to request from the batch system at any one time.
    default=9223372036854775807
  type: long
  inputBinding:
    prefix: --maxCpus
- id: max_memory
  doc: The maximum amount of memory to request from the batch system at any one time.
    default=9223372036854775807
  type: long
  inputBinding:
    prefix: --maxMemory
- id: retry_count
  doc: Number of times to retry a failing job before giving up and labeling job failed.
    default=0
  type: string
  inputBinding:
    prefix: --retryCount
- id: max_job_duration
  doc: Maximum runtime of a job (in seconds) before we kill it (this is a lower bound,
    and the actual time before killing the job may be longer). default=9223372036854775807
  type: long
  inputBinding:
    prefix: --maxJobDuration
- id: rescue_jobs_frequency
  doc: Period of time to wait (in seconds) between checking for missing/overlong jobs,
    that is jobs which get lost by the batch system. Expert parameter. (default is
    set by the batch system)
  type: string
  inputBinding:
    prefix: --rescueJobsFrequency
- id: big_batch_system
  doc: The batch system to run for jobs with larger memory/cpus requests, currently
    can be 'singleMachine'/'parasol'/'acidTest'/'gridEngine'. default=none
  type: string
  inputBinding:
    prefix: --bigBatchSystem
- id: big_memory_threshold
  doc: The memory threshold above which to submit to the big queue. default=9223372036854775807
  type: string
  inputBinding:
    prefix: --bigMemoryThreshold
- id: big_cpu_threshold
  doc: The cpu threshold above which to submit to the big queue. default=9223372036854775807
  type: string
  inputBinding:
    prefix: --bigCpuThreshold
- id: big_max_cpus
  doc: The maximum number of big batch system cpus to allow at one time on the big
    queue. default=9223372036854775807
  type: string
  inputBinding:
    prefix: --bigMaxCpus
- id: big_max_memory
  doc: The maximum amount of memory to request from the big batch system at any one
    time. default=9223372036854775807
  type: string
  inputBinding:
    prefix: --bigMaxMemory
- id: job_time
  doc: The approximate time (in seconds) that you'd like a list of child jobs to be
    run serially before being parallelized. This parameter allows one to avoid over
    parallelizing tiny jobs, and therefore paying significant scheduling overhead,
    by running tiny jobs in series on a single node/core of the cluster. default=30
  type: string
  inputBinding:
    prefix: --jobTime
- id: max_log_file_size
  doc: The maximum size of a job log file to keep (in bytes), log files larger than
    this will be truncated to the last X bytes. Default is 50 kilobytes, default=50120
  type: long
  inputBinding:
    prefix: --maxLogFileSize
- id: command
  doc: The command to run (which will generate subsequent jobs). This is deprecated
  type: string
  inputBinding:
    prefix: --command
outputs: []
cwlVersion: v1.1
baseCommand:
- scriptTreeTest_Sort.py
