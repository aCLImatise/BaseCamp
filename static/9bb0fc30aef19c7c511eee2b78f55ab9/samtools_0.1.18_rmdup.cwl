class: CommandLineTool
id: samtools_0.1.18_rmdup.cwl
inputs:
- id: in_rmdup_se_reads
  doc: rmdup for SE reads
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_treat_pe_reads
  doc: treat PE reads as SE in rmdup (force -s)
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_ss
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -sS
- id: in_sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_rmd_up
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_input_dots_rt_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- samtools_0.1.18
- rmdup
