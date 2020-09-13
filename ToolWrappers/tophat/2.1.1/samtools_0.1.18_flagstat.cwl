class: CommandLineTool
id: ../../../samtools_0.1.18_flagstat.cwl
inputs:
- id: in_sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_flag_stat
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_dot_bam
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
- samtools_0.1.18
- flagstat
