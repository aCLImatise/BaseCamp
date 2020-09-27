class: CommandLineTool
id: obo2xml.pl.cwl
inputs:
- id: in_obo_input_file
  doc: OBO input file
  type: boolean
  inputBinding:
    prefix: -f
- id: in_usage
  doc: ': obo2xml.pl [options]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- obo2xml.pl
