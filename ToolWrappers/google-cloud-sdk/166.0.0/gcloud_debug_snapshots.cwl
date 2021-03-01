class: CommandLineTool
id: gcloud_debug_snapshots.cwl
inputs:
- id: in_target
  doc: "=(ID|DESCRIPTION_REGEXP)\nThe debug target. It may be a target ID or name\
    \ obtained from 'debug\ntargets list', or it may be a regular expression uniquely\
    \ specifying a\ndebuggee based on its description or name. For App Engine projects,\
    \ if\nnot specified, the default target is the most recent deployment of the\n\
    default module and version."
  type: boolean?
  inputBinding:
    prefix: --target
- id: in_snapshots
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
- id: in_create
  doc: Create debug snapshots.
  type: string
  inputBinding:
    position: 0
- id: in_delete
  doc: Delete debug snapshots.
  type: string
  inputBinding:
    position: 1
- id: in_describe
  doc: Describe debug snapshots.
  type: string
  inputBinding:
    position: 2
- id: in_list
  doc: List debug snapshots.
  type: string
  inputBinding:
    position: 3
- id: in_wait
  doc: Wait for debug snapshots to complete.
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- debug
- snapshots
