class: CommandLineTool
id: obo2owl.pl.cwl
inputs:
- id: in_obo_input_file
  doc: OBO input file
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_url
  doc: URL
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_obo_owl_url
  doc: obo in owl url
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_usage
  doc: ': obo2owl.pl [options]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- obo2owl.pl
