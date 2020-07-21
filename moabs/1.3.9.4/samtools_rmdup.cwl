class: CommandLineTool
id: ../../../samtools_rmdup.cwl
inputs:
- id: rmdup_se_reads
  doc: rmdup for SE reads
  type: boolean
  inputBinding:
    prefix: -s
- id: treat_pe_reads
  doc: treat PE reads as SE in rmdup (force -s)
  type: boolean
  inputBinding:
    prefix: -S
- id: ss
  doc: ''
  type: boolean
  inputBinding:
    prefix: -sS
- id: input_dots_rt_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- samtools
- rmdup
