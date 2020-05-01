#!/usr/bin/env cwl-runner

baseCommand:
- scriptTreeTest_Wrapper2.py
class: CommandLineTool
cwlVersion: v1.0
id: scripttreetest_wrapper2.py
inputs:
- doc: Turn off logging. (default is CRITICAL)
  id: logoff
  inputBinding:
    prefix: --logOff
  type: boolean
- doc: Turn on logging at INFO level. (default is CRITICAL)
  id: loginfo
  inputBinding:
    prefix: --logInfo
  type: boolean
- doc: Turn on logging at DEBUG level. (default is CRITICAL)
  id: log_debug
  inputBinding:
    prefix: --logDebug
  type: boolean
- doc: Log at level (may be either OFF/INFO/DEBUG/CRITICAL). (default is CRITICAL)
  id: loglevel
  inputBinding:
    prefix: --logLevel
  type: string
- doc: File to log in
  id: log_file
  inputBinding:
    prefix: --logFile
  type: string
- doc: Turn on rotating logging, which prevents log files getting too big.
  id: rotating_logging
  inputBinding:
    prefix: --rotatingLogging
  type: boolean
- doc: Directory in which to place job management files and the global accessed temporary
    file directories(this needs to be globally accessible by all machines running
    jobs). If you pass an existing directory it will check if it's a valid existing
    job tree, then try and restart the jobs in it. The default=./jobTree
  id: job_tree
  inputBinding:
    prefix: --jobTree
  type: string
- doc: Records statistics about the job-tree to be used by jobTreeStats. default=False
  id: stats
  inputBinding:
    prefix: --stats
  type: boolean
- doc: The type of batch system to run the job(s) with, currently can be 'singleMachine'/'parasol'/'acidTest'/
    'gridEngine'/'lsf'. default=singleMachine
  id: batch_system
  inputBinding:
    prefix: --batchSystem
  type: string
- doc: The maximum number of threads (technically processes at this point) to use
    when running in single machine mode. Increasing this will allow more jobs to run
    concurrently when running on a single machine. default=4
  id: max_threads
  inputBinding:
    prefix: --maxThreads
  type: long
- doc: The command to run the parasol program default=parasol
  id: parasol_command
  inputBinding:
    prefix: --parasolCommand
  type: string
- doc: The default amount of memory to request for a job (in bytes), by default is
    2^31 = 2 gigabytes, default=2147483648
  id: default_memory
  inputBinding:
    prefix: --defaultMemory
  type: string
- doc: The default the number of cpus to dedicate a job. default=1
  id: default_cpu
  inputBinding:
    prefix: --defaultCpu
  type: string
- doc: The maximum number of cpus to request from the batch system at any one time.
    default=9223372036854775807
  id: max_cpus
  inputBinding:
    prefix: --maxCpus
  type: long
- doc: The maximum amount of memory to request from the batch system at any one time.
    default=9223372036854775807
  id: max_memory
  inputBinding:
    prefix: --maxMemory
  type: long
- doc: Number of times to retry a failing job before giving up and labeling job failed.
    default=0
  id: retry_count
  inputBinding:
    prefix: --retryCount
  type: string
- doc: Maximum runtime of a job (in seconds) before we kill it (this is a lower bound,
    and the actual time before killing the job may be longer). default=9223372036854775807
  id: max_job_duration
  inputBinding:
    prefix: --maxJobDuration
  type: long
- doc: Period of time to wait (in seconds) between checking for missing/overlong jobs,
    that is jobs which get lost by the batch system. Expert parameter. (default is
    set by the batch system)
  id: rescue_jobs_frequency
  inputBinding:
    prefix: --rescueJobsFrequency
  type: string
- doc: The batch system to run for jobs with larger memory/cpus requests, currently
    can be 'singleMachine'/'parasol'/'acidTest'/'gridEngine'. default=none
  id: big_batch_system
  inputBinding:
    prefix: --bigBatchSystem
  type: string
- doc: The memory threshold above which to submit to the big queue. default=9223372036854775807
  id: big_memory_threshold
  inputBinding:
    prefix: --bigMemoryThreshold
  type: string
- doc: The cpu threshold above which to submit to the big queue. default=9223372036854775807
  id: big_cpu_threshold
  inputBinding:
    prefix: --bigCpuThreshold
  type: string
- doc: The maximum number of big batch system cpus to allow at one time on the big
    queue. default=9223372036854775807
  id: big_max_cpus
  inputBinding:
    prefix: --bigMaxCpus
  type: string
- doc: The maximum amount of memory to request from the big batch system at any one
    time. default=9223372036854775807
  id: big_max_memory
  inputBinding:
    prefix: --bigMaxMemory
  type: string
- doc: The approximate time (in seconds) that you'd like a list of child jobs to be
    run serially before being parallelized. This parameter allows one to avoid over
    parallelizing tiny jobs, and therefore paying significant scheduling overhead,
    by running tiny jobs in series on a single node/core of the cluster. default=30
  id: job_time
  inputBinding:
    prefix: --jobTime
  type: string
- doc: The maximum size of a job log file to keep (in bytes), log files larger than
    this will be truncated to the last X bytes. Default is 50 kilobytes, default=50120
  id: max_log_file_size
  inputBinding:
    prefix: --maxLogFileSize
  type: long
- doc: The command to run (which will generate subsequent jobs). This is deprecated
  id: command
  inputBinding:
    prefix: --command
  type: string
