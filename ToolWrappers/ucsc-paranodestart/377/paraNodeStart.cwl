class: CommandLineTool
id: paraNodeStart.cwl
inputs:
- id: in_log_facility
  doc: Log to the specified syslog facility - default local0.
  type: long
  inputBinding:
    prefix: -logFacility
- id: in_log_min_priority
  doc: "minimum syslog priority to log, also filters file logging.\ndefaults to \"\
    warn\""
  type: File
  inputBinding:
    prefix: -logMinPriority
- id: in_log
  doc: Log to file instead of syslog.
  type: File
  inputBinding:
    prefix: -log
- id: in_umask
  doc: Set umask to run under - default 002.
  type: long
  inputBinding:
    prefix: -umask
- id: in_random_delay
  doc: Set random start delay in milliseconds - default 5000.
  type: long
  inputBinding:
    prefix: -randomDelay
- id: in_user_path
  doc: :bin/i386  User dirs to add to path.
  type: File
  inputBinding:
    prefix: -userPath
- id: in_sys_path
  doc: =/sbin:/local/bin  System dirs to add to path.
  type: boolean
  inputBinding:
    prefix: -sysPath
- id: in_env
  doc: =value - add environment variable to jobs.  Maybe repeated.
  type: string
  inputBinding:
    prefix: -env
- id: in_hub
  doc: Nodes will ignore messages from elsewhere.
  type: string
  inputBinding:
    prefix: -hub
- id: in_rsh
  doc: =/path/to/rsh/like/command.
  type: boolean
  inputBinding:
    prefix: -rsh
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- paraNodeStart
