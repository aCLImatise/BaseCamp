class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pvacseq_download_example_data.cwl
inputs:
- id: destination_directory
  doc: Directory for downloading example data
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pvacseq
- download_example_data
