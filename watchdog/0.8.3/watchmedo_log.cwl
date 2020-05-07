class: CommandLineTool
id: watchmedo_log.cwl
inputs:
- id: directories
  doc: "directories to watch. (default: '.')"
  type: string
  inputBinding:
    position: 0
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
- id: trace
  doc: 'dumps complete dispatching trace (default: False)'
  type: boolean
  inputBinding:
    prefix: --trace
- id: debug_force_polling
  doc: '[debug] forces polling (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug-force-polling
- id: debug_force_kqueue
  doc: '[debug] forces BSD kqueue(2) (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug-force-kqueue
- id: debug_force_winapi
  doc: '[debug] forces Windows API (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug-force-winapi
- id: debug_force_winapi_async
  doc: '[debug] forces Windows API + I/O completion (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug-force-winapi-async
- id: debug_force_fs_events
  doc: '[debug] forces Mac OS X FSEvents (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug-force-fsevents
- id: debug_force_i_notify
  doc: '[debug] forces Linux inotify(7) (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug-force-inotify
outputs: []
cwlVersion: v1.1
baseCommand:
- watchmedo
- log
