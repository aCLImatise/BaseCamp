class: CommandLineTool
id: ../../../para.cwl
inputs:
- id: in_cpu
  doc: Number of CPUs used by the jobs, default 1.
  type: long
  inputBinding:
    prefix: -cpu
- id: in_ram
  doc: "Number of bytes of RAM used by the jobs.\nDefault is RAM on node divided by\
    \ number of cpus on node.\nShorthand expressions allow t,g,m,k for tera, giga,\
    \ mega, kilo.\ne.g. 4g = 4 Gigabytes."
  type: long
  inputBinding:
    prefix: -ram
- id: in_batch
  doc: "- specify the directory path that is used to store the\nbatch control files.\
    \  The batchDir can be an absolute path or a path\nrelative to the current directory.\
    \  The resulting path is use as the\nbatch name.  The directory is created if\
    \ it doesn't exist.  When\ncreating a new batch, batchDir should not have been\
    \ previously used as\na batch name.  The batchDir must be writable by the paraHub\
    \ process.\nThis does not affect the working directory assigned to jobs.  It defaults\n\
    to the directory where para is run.  If used, this option must be specified\n\
    on all para commands for the  batch.  For example to run two batches in the\n\
    same directory:\npara -batch=b1 make jobs1\npara -batch=b2 make jobs2"
  type: File
  inputBinding:
    prefix: -batch
- id: in_retries
  doc: Number of retries per job - default 4.
  type: long
  inputBinding:
    prefix: -retries
- id: in_max_queue
  doc: "Number of jobs to allow on parasol queue.\nDefault 2000000."
  type: long
  inputBinding:
    prefix: -maxQueue
- id: in_min_push
  doc: "Minimum number of jobs to queue.\nDefault 1.  Overrides maxQueue."
  type: long
  inputBinding:
    prefix: -minPush
- id: in_max_push
  doc: Maximum number of jobs to queue - default 100000.
  type: long
  inputBinding:
    prefix: -maxPush
- id: in_warn_time
  doc: "Number of minutes job runs before hang warning.\nDefault 4320 (3 days)."
  type: long
  inputBinding:
    prefix: -warnTime
- id: in_kill_time
  doc: "Number of minutes hung job runs before push kills it.\nBy default kill off\
    \ for backwards compatibility."
  type: long
  inputBinding:
    prefix: -killTime
- id: in_delay_time
  doc: "Number of seconds to delay before submitting next job\nto minimize i/o load\
    \ at startup - default 0."
  type: long
  inputBinding:
    prefix: -delayTime
- id: in_priority
  doc: "Set batch priority to high, medium, or low.\nDefault medium (use high only\
    \ with approval).\nIf needed, use with make, push, create, shove, or try.\nOr,\
    \ set batch priority to a specific numeric value - default 10.\n1 is emergency\
    \ high priority,\n10 is normal medium,\n100 is low for bottomfeeders.\nSetting\
    \ priority higher than normal (1-9) will be logged.\nPlease keep low priority\
    \ jobs short, they won't be pre-empted."
  type: long
  inputBinding:
    prefix: -priority
- id: in_max_job
  doc: "Limit the number of jobs the batch can run.\nSpecify number of jobs, for example\
    \ 10 or 'unlimited'.\nDefault unlimited displays as -1."
  type: long
  inputBinding:
    prefix: -maxJob
- id: in_job_cwd
  doc: "- specify the directory path to use as the current working\ndirectory for\
    \ each job.  The dir can be an absolute path or a path\nrelative to the current\
    \ directory. It defaults to the directory where\npara is run."
  type: File
  inputBinding:
    prefix: -jobCwd
- id: in_verbose
  doc: '- set verbosity level.'
  type: long
  inputBinding:
    prefix: -verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- para
