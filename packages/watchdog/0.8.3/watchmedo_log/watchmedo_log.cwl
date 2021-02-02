class: CommandLineTool
id: watchmedo_log.cwl
inputs:
- id: in_patterns
  doc: "matches event paths with these patterns (separated by\n;). (default: '*')"
  type: string
  inputBinding:
    prefix: --patterns
- id: in_ignore_patterns
  doc: "ignores event paths with these patterns (separated by\n;). (default: '')"
  type: string
  inputBinding:
    prefix: --ignore-patterns
- id: in_ignore_directories
  doc: 'ignores events for directories (default: False)'
  type: boolean
  inputBinding:
    prefix: --ignore-directories
- id: in_recursive
  doc: 'monitors the directories recursively (default: False)'
  type: boolean
  inputBinding:
    prefix: --recursive
- id: in_interval
  doc: "use this as the polling interval/blocking timeout\n(default: 1.0)"
  type: double
  inputBinding:
    prefix: --interval
- id: in_trace
  doc: 'dumps complete dispatching trace (default: False)'
  type: boolean
  inputBinding:
    prefix: --trace
- id: in_debug_force_polling
  doc: '[debug] forces polling (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug-force-polling
- id: in_debug_force_kqueue
  doc: '[debug] forces BSD kqueue(2) (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug-force-kqueue
- id: in_debug_force_winapi
  doc: '[debug] forces Windows API (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug-force-winapi
- id: in_debug_force_winapi_async
  doc: "[debug] forces Windows API + I/O completion (default:\nFalse)"
  type: boolean
  inputBinding:
    prefix: --debug-force-winapi-async
- id: in_debug_force_fs_events
  doc: '[debug] forces Mac OS X FSEvents (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug-force-fsevents
- id: in_debug_force_i_notify
  doc: "[debug] forces Linux inotify(7) (default: False)\n"
  type: boolean
  inputBinding:
    prefix: --debug-force-inotify
- id: in_directories
  doc: "directories to watch. (default: '.')"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- watchmedo
- log
