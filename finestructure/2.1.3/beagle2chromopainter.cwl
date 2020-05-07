class: CommandLineTool
id: beagle2chromopainter.pl.cwl
inputs:
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: beagle_2chromopainterpl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: beagle_phased_output_file
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
- beagle2chromopainter.pl
