class: CommandLineTool
id: complementBed.cwl
inputs:
- id: in_limit_output_solely
  doc: Limit output to solely the chromosomes with records in the input file.
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_g
  doc: ''
  type: string?
  inputBinding:
    prefix: -g
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
- id: in_bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_complement
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- complementBed
