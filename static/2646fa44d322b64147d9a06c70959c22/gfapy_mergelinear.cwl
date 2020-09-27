class: CommandLineTool
id: gfapy_mergelinear.cwl
inputs:
- id: in_redundant
  doc: "create redundant paths, similar to the contigs\nconstructed by Readjoiner"
  type: boolean
  inputBinding:
    prefix: --redundant
- id: in_no_progress
  doc: do not show progress log
  type: boolean
  inputBinding:
    prefix: --no-progress
- id: in_quiet
  doc: suppress output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_v_level
  doc: validation level
  type: string
  inputBinding:
    prefix: --vlevel
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gfapy-mergelinear
