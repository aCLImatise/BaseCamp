class: CommandLineTool
id: pslHisto.cwl
inputs:
- id: in_multi_only
  doc: '- omit queries with only one alignment from output.'
  type: boolean?
  inputBinding:
    prefix: -multiOnly
- id: in_nonzero
  doc: '- omit queries with zero values.'
  type: boolean?
  inputBinding:
    prefix: -nonZero
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pslHisto
