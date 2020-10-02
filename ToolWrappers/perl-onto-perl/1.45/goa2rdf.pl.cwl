class: CommandLineTool
id: goa2rdf.pl.cwl
inputs:
- id: in_goa_input_file
  doc: GOA input file
  type: boolean
  inputBinding:
    prefix: -f
- id: in_usage
  doc: ': goa2rdf.pl [options]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- goa2rdf.pl
