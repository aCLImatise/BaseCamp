class: CommandLineTool
id: dr_disco_bam_extract.cwl
inputs:
- id: in_region_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_region_two
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_bam_input_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dr-disco
- bam-extract
