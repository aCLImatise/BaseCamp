class: CommandLineTool
id: watchmedo_auto_restart.cwl
inputs:
- id: in_directory
  doc: "Directory to watch. Use another -d or --directory\noption for each directory.\
    \ (default: -)"
  type: Directory?
  inputBinding:
    prefix: --directory
- id: in_patterns
  doc: "matches event paths with these patterns (separated by\n;). (default: '*')"
  type: string?
  inputBinding:
    prefix: --patterns
- id: in_ignore_patterns
  doc: "ignores event paths with these patterns (separated by\n;). (default: '')"
  type: string?
  inputBinding:
    prefix: --ignore-patterns
- id: in_ignore_directories
  doc: 'ignores events for directories (default: False)'
  type: boolean?
  inputBinding:
    prefix: --ignore-directories
- id: in_recursive
  doc: 'monitors the directories recursively (default: False)'
  type: boolean?
  inputBinding:
    prefix: --recursive
- id: in_interval
  doc: "use this as the polling interval/blocking timeout\n(default: 1.0)"
  type: double?
  inputBinding:
    prefix: --interval
- id: in_signal
  doc: "stop the subprocess with this signal (default SIGINT)\n(default: 'SIGINT')"
  type: string?
  inputBinding:
    prefix: --signal
- id: in_kill_after
  doc: "when stopping, kill the subprocess after the specified\ntimeout (default 10)\
    \ (default: 10.0)\n"
  type: double?
  inputBinding:
    prefix: --kill-after
- id: in_command
  doc: Long-running command to run in a subprocess.
  type: string
  inputBinding:
    position: 0
- id: in_arg
  doc: "Command arguments. Note: Use -- before the command\narguments, otherwise watchmedo\
    \ will try to interpret\nthem. (default: -)"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- watchmedo
- auto-restart
