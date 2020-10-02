class: CommandLineTool
id: bam2chicago.sh.cwl
inputs:
- id: in_bam_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bait_map_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_digest_r_map_file
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: in_sample_name
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_no_delete
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bam2chicago.sh
