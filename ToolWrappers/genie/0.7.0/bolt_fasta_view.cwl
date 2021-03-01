class: CommandLineTool
id: bolt_fasta_view.cwl
inputs:
- id: in_file_path
  doc: A bam file (*require)
  type: File?
  inputBinding:
    prefix: --filepath
- id: in_scope
  doc: Scope chr:begin-end (*require)
  type: string?
  inputBinding:
    prefix: --scope
- id: in_genie
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_view
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bolt
- fasta
- view
