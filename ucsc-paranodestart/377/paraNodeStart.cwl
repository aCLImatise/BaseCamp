#!/usr/bin/env cwl-runner

baseCommand:
- paraNodeStart
class: CommandLineTool
cwlVersion: v1.0
id: paranodestart
inputs:
- doc: ''
  id: machine_list
  inputBinding:
    position: 0
  type: string
- doc: Log to file instead of syslog.
  id: log
  inputBinding:
    prefix: -log
  type: File
- doc: =000  Set umask to run under - default 002.
  id: umask
  inputBinding:
    prefix: -umask
  type: boolean
- doc: Set random start delay in milliseconds - default 5000.
  id: random_delay
  inputBinding:
    prefix: -randomDelay
  type: string
- doc: :bin/i386  User dirs to add to path.
  id: user_path
  inputBinding:
    prefix: -userPath
  type: string
- doc: =/sbin:/local/bin  System dirs to add to path.
  id: sys_path
  inputBinding:
    prefix: -sysPath
  type: boolean
- doc: =value - add environment variable to jobs.  Maybe repeated.
  id: env
  inputBinding:
    prefix: -env
  type: string
- doc: Nodes will ignore messages from elsewhere.
  id: hub
  inputBinding:
    prefix: -hub
  type: string
- doc: =/path/to/rsh/like/command.
  id: rsh
  inputBinding:
    prefix: -rsh
  type: boolean
