class: CommandLineTool
id: ../../../faCount.cwl
inputs:
- id: in_summary
  doc: show only summary statistics
  type: boolean
  inputBinding:
    prefix: -summary
- id: in_din_uc
  doc: include statistics on dinucletoide frequencies
  type: boolean
  inputBinding:
    prefix: -dinuc
- id: in_strands
  doc: count bases on both strands
  type: boolean
  inputBinding:
    prefix: -strands
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- faCount
