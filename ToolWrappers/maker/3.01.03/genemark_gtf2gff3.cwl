class: CommandLineTool
id: genemark_gtf2gff3.cwl
inputs:
- id: in_var_0
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_redirect
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_converts
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_script
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_genemark
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_into
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_prints
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_stdout_dot
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_use
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_var_13
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0
cwlVersion: v1.1
baseCommand:
- genemark_gtf2gff3
