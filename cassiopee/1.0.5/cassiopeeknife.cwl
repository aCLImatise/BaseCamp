class: CommandLineTool
id: ../../../cassiopeeknife.cwl
inputs:
- id: _sequence_convert
  doc: ': sequence to convert'
  type: boolean
  inputBinding:
    prefix: -s
- id: _output_file
  doc: ': output file'
  type: boolean
  inputBinding:
    prefix: -o
- id: _show_version
  doc: ': show version'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- cassiopeeknife
