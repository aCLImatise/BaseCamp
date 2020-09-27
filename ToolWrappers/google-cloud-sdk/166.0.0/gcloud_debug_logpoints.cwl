class: CommandLineTool
id: gcloud_debug_logpoints.cwl
inputs:
- id: in_target
  doc: "=(ID|DESCRIPTION_REGEXP)\nThe debug target. It may be a target ID or name\
    \ obtained from 'debug\ntargets list', or it may be a regular expression uniquely\
    \ specifying a\ndebuggee based on its description or name. For App Engine projects,\
    \ if\nnot specified, the default target is the most recent deployment of the\n\
    default module and version."
  type: boolean
  inputBinding:
    prefix: --target
- id: in_log_points
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
- id: in_create
  doc: Create debug logpoints.
  type: string
  inputBinding:
    position: 0
- id: in_delete
  doc: Delete debug logpoints.
  type: string
  inputBinding:
    position: 1
- id: in_list
  doc: List debug logpoints.
  type: string
  inputBinding:
    position: 2
- id: in_id
  doc: LOCATION    ...
  type: string
  inputBinding:
    position: 0
- id: in_five_six_seven_eight_nine_zero_abcdef_one_one_two_three_four_five_six_seven_eight_nine
  doc: product.py:123  ...
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- debug
- logpoints
