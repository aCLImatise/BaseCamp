class: CommandLineTool
id: watchmedo_shell_command.cwl
inputs:
- id: in_command
  doc: "shell command executed in response to matching events.\nThese interpolation\
    \ variables are available to your\ncommand string:: ${watch_src_path} - event\
    \ source\npath; ${watch_dest_path} - event destination path (for\nmoved events);\
    \ ${watch_event_type} - event type;\n${watch_object} - ``file`` or ``directory``\
    \ Note::\nPlease ensure you do not use double quotes (\") to\nquote your command\
    \ string. That will force your shell\nto interpolate before the command is processed\
    \ by this\nsubcommand. Example option usage:: --command='echo\n\"${watch_src_path}\"\
    ' (default: -)"
  type: File?
  inputBinding:
    prefix: --command
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
- id: in_wait
  doc: "wait for process to finish to avoid multiple\nsimultaneous instances (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --wait
- id: in_drop
  doc: "Ignore events that occur while command is still being\nexecuted to avoid multiple\
    \ simultaneous instances\n(default: False)\n"
  type: boolean?
  inputBinding:
    prefix: --drop
- id: in_directories
  doc: "directories to watch (default: '.')"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- watchmedo
- shell-command
