class: CommandLineTool
id: impute2chromopainter.pl.cwl
inputs:
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: impute2chromopainterpl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: impute_output_file_haps
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_filename_prefix
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- impute2chromopainter.pl
