class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/beagle2chromopainter.pl.cwl
inputs:
- id: beagle_phased_output_file
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
- beagle2chromopainter.pl
