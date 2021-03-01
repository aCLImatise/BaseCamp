class: CommandLineTool
id: samtools_dict.cwl
inputs:
- id: in_assembly
  doc: assembly
  type: string?
  inputBinding:
    prefix: --assembly
- id: in_no_header
  doc: do not print @HD line
  type: boolean?
  inputBinding:
    prefix: --no-header
- id: in_output
  doc: file to write out dict file [stdout]
  type: File?
  inputBinding:
    prefix: --output
- id: in_species
  doc: species
  type: string?
  inputBinding:
    prefix: --species
- id: in_uri
  doc: URI [file:///abs/path/to/file.fa]
  type: File?
  inputBinding:
    prefix: --uri
- id: in_filed_otf_a_vertical_line_file_dot_fado_tgz
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: file to write out dict file [stdout]
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- samtools
- dict
