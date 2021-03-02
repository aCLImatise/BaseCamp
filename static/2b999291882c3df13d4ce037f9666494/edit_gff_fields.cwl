class: CommandLineTool
id: edit_gff_fields.cwl
inputs:
- id: in_verbose
  doc: "Number of annotations to parse, 0 will parse the\nwhole file  [default: 10]"
  type: long?
  inputBinding:
    prefix: --verbose
- id: in_gff_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_txt_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- edit-gff
- fields
