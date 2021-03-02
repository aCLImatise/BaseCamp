class: CommandLineTool
id: obo2rdf.pl.cwl
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
- id: in_namespace
  doc: namespace
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_usage
  doc: ': obo2rdf.pl [options]'
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
- obo2rdf.pl
