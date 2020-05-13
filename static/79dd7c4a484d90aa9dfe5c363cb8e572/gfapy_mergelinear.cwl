class: CommandLineTool
id: gfapy_mergelinear.cwl
inputs:
- id: redundant
  doc: create redundant paths, similar to the contigs constructed by Readjoiner
  type: boolean
  inputBinding:
    prefix: --redundant
- id: no_progress
  doc: do not show progress log
  type: boolean
  inputBinding:
    prefix: --no-progress
- id: quiet
  doc: suppress output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: v_level
  doc: validation level
  type: string
  inputBinding:
    prefix: --vlevel
outputs: []
cwlVersion: v1.1
baseCommand:
- gfapy-mergelinear
