class: CommandLineTool
id: watchmedo_auto_restart.cwl
inputs:
- id: command
  doc: Long-running command to run in a subprocess.
  type: string
  inputBinding:
    position: 0
- id: arg
  doc: 'Command arguments. Note: Use -- before the command arguments, otherwise watchmedo
    will try to interpret them. (default: -)'
  type: string
  inputBinding:
    position: 1
- id: directory
  doc: 'Directory to watch. Use another -d or --directory option for each directory.
    (default: -)'
  type: Directory
  inputBinding:
    prefix: --directory
- id: patterns
  doc: "matches event paths with these patterns (separated by ;). (default: '*')"
  type: string
  inputBinding:
    prefix: --patterns
- id: ignore_patterns
  doc: "ignores event paths with these patterns (separated by ;). (default: '')"
  type: string
  inputBinding:
    prefix: --ignore-patterns
- id: ignore_directories
  doc: 'ignores events for directories (default: False)'
  type: boolean
  inputBinding:
    prefix: --ignore-directories
- id: recursive
  doc: 'monitors the directories recursively (default: False)'
  type: boolean
  inputBinding:
    prefix: --recursive
- id: interval
  doc: 'use this as the polling interval/blocking timeout (default: 1.0)'
  type: string
  inputBinding:
    prefix: --interval
- id: signal
  doc: "stop the subprocess with this signal (default SIGINT) (default: 'SIGINT')"
  type: string
  inputBinding:
    prefix: --signal
- id: kill_after
  doc: 'when stopping, kill the subprocess after the specified timeout (default 10)
    (default: 10.0)'
  type: string
  inputBinding:
    prefix: --kill-after
outputs: []
cwlVersion: v1.1
baseCommand:
- watchmedo
- auto-restart
