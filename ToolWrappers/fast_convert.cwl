class: CommandLineTool
id: fast_convert.cwl
inputs:
- id: in_discard_q
  doc: "Discard quality information from fastq, use with --mock_q.\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --discard_q
- id: in_mock_q
  doc: 'Mock quality value, valid for convert=aq|qq. (default: 10)'
  type: long
  inputBinding:
    prefix: --mock_q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fast_convert
