class: CommandLineTool
id: scriptTreeTest_Wrapper2.py.cwl
inputs:
- id: in_logoff
  doc: Turn off logging. (default is CRITICAL)
  type: boolean
  inputBinding:
    prefix: --logOff
- id: in_loginfo
  doc: Turn on logging at INFO level. (default is CRITICAL)
  type: boolean
  inputBinding:
    prefix: --logInfo
- id: in_log_debug
  doc: Turn on logging at DEBUG level. (default is CRITICAL)
  type: boolean
  inputBinding:
    prefix: --logDebug
- id: in_loglevel
  doc: "Log at level (may be either OFF/INFO/DEBUG/CRITICAL).\n(default is CRITICAL)"
  type: string
  inputBinding:
    prefix: --logLevel
- id: in_log_file
  doc: File to log in
  type: File
  inputBinding:
    prefix: --logFile
- id: in_rotating_logging
  doc: "Turn on rotating logging, which prevents log files\ngetting too big."
  type: boolean
  inputBinding:
    prefix: --rotatingLogging
- id: in_job_tree
  doc: "Directory in which to place job management files and\nthe global accessed\
    \ temporary file directories(this\nneeds to be globally accessible by all machines\n\
    running jobs). If you pass an existing directory it\nwill check if it's a valid\
    \ existing job tree, then try\nand restart the jobs in it. The default=./jobTree"
  type: File
  inputBinding:
    prefix: --jobTree
- id: in_stats
  doc: "Records statistics about the job-tree to be used by\njobTreeStats. default=False"
  type: boolean
  inputBinding:
    prefix: --stats
- id: in_batch_system
  doc: "The type of batch system to run the job(s) with,\ncurrently can be 'singleMachine'/'parasol'/'acidTest'/\n\
    'gridEngine'/'lsf'. default=singleMachine"
  type: string
  inputBinding:
    prefix: --batchSystem
- id: in_max_threads
  doc: "The maximum number of threads (technically processes\nat this point) to use\
    \ when running in single machine\nmode. Increasing this will allow more jobs to\
    \ run\nconcurrently when running on a single machine.\ndefault=4"
  type: long
  inputBinding:
    prefix: --maxThreads
- id: in_parasol_command
  doc: The command to run the parasol program default=parasol
  type: string
  inputBinding:
    prefix: --parasolCommand
- id: in_default_memory
  doc: "The default amount of memory to request for a job (in\nbytes), by default\
    \ is 2^31 = 2 gigabytes,\ndefault=2147483648"
  type: long
  inputBinding:
    prefix: --defaultMemory
- id: in_default_cpu
  doc: "The default the number of cpus to dedicate a job.\ndefault=1"
  type: long
  inputBinding:
    prefix: --defaultCpu
- id: in_max_cpus
  doc: "The maximum number of cpus to request from the batch\nsystem at any one time.\
    \ default=9223372036854775807"
  type: long
  inputBinding:
    prefix: --maxCpus
- id: in_max_memory
  doc: "The maximum amount of memory to request from the batch\nsystem at any one\
    \ time. default=9223372036854775807"
  type: long
  inputBinding:
    prefix: --maxMemory
- id: in_retry_count
  doc: "Number of times to retry a failing job before giving\nup and labeling job\
    \ failed. default=0"
  type: long
  inputBinding:
    prefix: --retryCount
- id: in_max_job_duration
  doc: "Maximum runtime of a job (in seconds) before we kill\nit (this is a lower\
    \ bound, and the actual time before\nkilling the job may be longer).\ndefault=9223372036854775807"
  type: long
  inputBinding:
    prefix: --maxJobDuration
- id: in_rescue_jobs_frequency
  doc: "Period of time to wait (in seconds) between checking\nfor missing/overlong\
    \ jobs, that is jobs which get lost\nby the batch system. Expert parameter. (default\
    \ is set\nby the batch system)"
  type: string
  inputBinding:
    prefix: --rescueJobsFrequency
- id: in_big_batch_system
  doc: "The batch system to run for jobs with larger\nmemory/cpus requests, currently\
    \ can be\n'singleMachine'/'parasol'/'acidTest'/'gridEngine'.\ndefault=none"
  type: string
  inputBinding:
    prefix: --bigBatchSystem
- id: in_big_memory_threshold
  doc: "The memory threshold above which to submit to the big\nqueue. default=9223372036854775807"
  type: long
  inputBinding:
    prefix: --bigMemoryThreshold
- id: in_big_cpu_threshold
  doc: "The cpu threshold above which to submit to the big\nqueue. default=9223372036854775807"
  type: long
  inputBinding:
    prefix: --bigCpuThreshold
- id: in_big_max_cpus
  doc: "The maximum number of big batch system cpus to allow\nat one time on the big\
    \ queue.\ndefault=9223372036854775807"
  type: long
  inputBinding:
    prefix: --bigMaxCpus
- id: in_big_max_memory
  doc: "The maximum amount of memory to request from the big\nbatch system at any\
    \ one time.\ndefault=9223372036854775807"
  type: long
  inputBinding:
    prefix: --bigMaxMemory
- id: in_job_time
  doc: "The approximate time (in seconds) that you'd like a\nlist of child jobs to\
    \ be run serially before being\nparallelized. This parameter allows one to avoid\
    \ over\nparallelizing tiny jobs, and therefore paying\nsignificant scheduling\
    \ overhead, by running tiny jobs\nin series on a single node/core of the cluster.\n\
    default=30"
  type: long
  inputBinding:
    prefix: --jobTime
- id: in_max_log_file_size
  doc: "The maximum size of a job log file to keep (in bytes),\nlog files larger than\
    \ this will be truncated to the\nlast X bytes. Default is 50 kilobytes, default=50120"
  type: long
  inputBinding:
    prefix: --maxLogFileSize
- id: in_command
  doc: "The command to run (which will generate subsequent\njobs). This is deprecated\n"
  type: string
  inputBinding:
    prefix: --command
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- scriptTreeTest_Wrapper2.py
