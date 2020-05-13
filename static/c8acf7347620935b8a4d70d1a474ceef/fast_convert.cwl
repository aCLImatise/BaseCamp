class: CommandLineTool
id: fast_convert.cwl
inputs:
- id: discard_q
  doc: 'Discard quality information from fastq, use with --mock_q. (default: False)'
  type: boolean
  inputBinding:
    prefix: --discard_q
- id: mock_q
  doc: 'Mock quality value, valid for convert=aq|qq. (default: 10)'
  type: string
  inputBinding:
    prefix: --mock_q
outputs: []
cwlVersion: v1.1
baseCommand:
- fast_convert
