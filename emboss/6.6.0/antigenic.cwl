class: CommandLineTool
id: antigenic.cwl
inputs:
- id: min_len
  doc: integer    [6] Minimum length of antigenic region (Integer from 1 to 50)
  type: boolean
  inputBinding:
    prefix: -minlen
outputs: []
cwlVersion: v1.1
baseCommand:
- antigenic
