class: CommandLineTool
id: paraNodeStart.cwl
inputs:
- id: machine_list
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: log
  doc: Log to file instead of syslog.
  type: File
  inputBinding:
    prefix: -log
- id: umask
  doc: =000  Set umask to run under - default 002.
  type: boolean
  inputBinding:
    prefix: -umask
- id: random_delay
  doc: Set random start delay in milliseconds - default 5000.
  type: string
  inputBinding:
    prefix: -randomDelay
- id: user_path
  doc: :bin/i386  User dirs to add to path.
  type: string
  inputBinding:
    prefix: -userPath
- id: sys_path
  doc: =/sbin:/local/bin  System dirs to add to path.
  type: boolean
  inputBinding:
    prefix: -sysPath
- id: env
  doc: =value - add environment variable to jobs.  Maybe repeated.
  type: string
  inputBinding:
    prefix: -env
- id: hub
  doc: Nodes will ignore messages from elsewhere.
  type: string
  inputBinding:
    prefix: -hub
- id: rsh
  doc: =/path/to/rsh/like/command.
  type: boolean
  inputBinding:
    prefix: -rsh
outputs: []
cwlVersion: v1.1
baseCommand:
- paraNodeStart
