class: CommandLineTool
id: ChromosomePaint.cwl
inputs:
- id: in_string_mizbee_file
  doc: '<string> : MizBee file'
  type: boolean
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ChromosomePaint
