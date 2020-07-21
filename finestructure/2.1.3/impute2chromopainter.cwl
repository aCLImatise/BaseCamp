class: CommandLineTool
id: ../../../impute2chromopainter.pl.cwl
inputs:
- id: impute_output_file_dot_haps
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_filename_prefix
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- impute2chromopainter.pl
