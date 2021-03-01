class: CommandLineTool
id: paraNode.cwl
inputs:
- id: in_log_facility
  doc: Log to the specified syslog facility - default local0.
  type: long?
  inputBinding:
    prefix: -logFacility
- id: in_log_min_priority
  doc: "minimum syslog priority to log, also filters file logging.\ndefaults to \"\
    warn\""
  type: File?
  inputBinding:
    prefix: -logMinPriority
- id: in_log
  doc: Log to file instead of syslog.
  type: File?
  inputBinding:
    prefix: -log
- id: in_debug
  doc: Don't daemonize
  type: boolean?
  inputBinding:
    prefix: -debug
- id: in_hub
  doc: Restrict access to connections from hub.
  type: string?
  inputBinding:
    prefix: -hub
- id: in_umask
  doc: Set umask to run under - default 002.
  type: long?
  inputBinding:
    prefix: -umask
- id: in_user_path
  doc: :bin/i386  User dirs to add to path.
  type: File?
  inputBinding:
    prefix: -userPath
- id: in_sys_path
  doc: =/sbin:/local/bin  System dirs to add to path.
  type: boolean?
  inputBinding:
    prefix: -sysPath
- id: in_env
  doc: =value - add environment variable to jobs.  Maybe repeated.
  type: string?
  inputBinding:
    prefix: -env
- id: in_random_delay
  doc: "Up to this many milliseconds of random delay before\nstarting a job.  This\
    \ is mostly to avoid swamping NFS with\nfile opens when loading up an idle cluster.\
    \  Also it limits\nthe impact on the hub of very short jobs. Default 5000."
  type: File?
  inputBinding:
    prefix: -randomDelay
- id: in_cpu
  doc: Number of CPUs to use - default 1.
  type: long?
  inputBinding:
    prefix: -cpu
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- paraNode
