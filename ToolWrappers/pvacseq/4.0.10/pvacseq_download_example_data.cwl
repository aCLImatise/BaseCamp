class: CommandLineTool
id: pvacseq_download_example_data.cwl
inputs:
- id: in_destination_directory
  doc: Directory for downloading example data
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pvacseq
- download_example_data
