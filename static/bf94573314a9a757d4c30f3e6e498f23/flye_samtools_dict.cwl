class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/flye_samtools_dict.cwl
inputs:
- id: assembly
  doc: assembly
  type: string
  inputBinding:
    prefix: --assembly
- id: no_header
  doc: do not print @HD line
  type: boolean
  inputBinding:
    prefix: --no-header
- id: output
  doc: file to write out dict file [stdout]
  type: string
  inputBinding:
    prefix: --output
- id: species
  doc: species
  type: string
  inputBinding:
    prefix: --species
- id: uri
  doc: URI [file:///abs/path/to/file.fa]
  type: string
  inputBinding:
    prefix: --uri
- id: sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: dict
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: filed_otf_a_vertical_line_file_dot_fado_tgz
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- flye-samtools
- dict
