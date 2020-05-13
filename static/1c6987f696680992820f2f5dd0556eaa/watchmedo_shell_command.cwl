class: CommandLineTool
id: watchmedo_shell_command.cwl
inputs:
- id: directories
  doc: "directories to watch (default: '.')"
  type: string
  inputBinding:
    position: 0
- id: command
  doc: "shell command executed in response to matching events. These interpolation\
    \ variables are available to your command string:: ${watch_src_path} - event source\
    \ path; ${watch_dest_path} - event destination path (for moved events); ${watch_event_type}\
    \ - event type; ${watch_object} - ``file`` or ``directory`` Note:: Please ensure\
    \ you do not use double quotes (\") to quote your command string. That will force\
    \ your shell to interpolate before the command is processed by this subcommand.\
    \ Example option usage:: --command='echo \"${watch_src_path}\"' (default: -)"
  type: string
  inputBinding:
    prefix: --command
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
- id: wait
  doc: 'wait for process to finish to avoid multiple simultaneous instances (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --wait
- id: drop
  doc: 'Ignore events that occur while command is still being executed to avoid multiple
    simultaneous instances (default: False)'
  type: boolean
  inputBinding:
    prefix: --drop
outputs: []
cwlVersion: v1.1
baseCommand:
- watchmedo
- shell-command
