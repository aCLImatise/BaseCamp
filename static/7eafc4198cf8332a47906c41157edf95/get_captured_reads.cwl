class: CommandLineTool
id: get_captured_reads.cwl
inputs:
- id: in_baits
  doc: Baits format file
  type: boolean?
  inputBinding:
    prefix: --baits
- id: in_header
  doc: Specify number of header lines in the baits file (i.e. skip these)
  type: boolean?
  inputBinding:
    prefix: --header
- id: in_interactions
  doc: Calculate interaction frequecies between baits
  type: boolean?
  inputBinding:
    prefix: --interactions
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- get_captured_reads
