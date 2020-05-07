class: CommandLineTool
id: samtools_rmdup.cwl
inputs:
- id: inputs_rtb_am
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: s
  doc: rmdup for SE reads
  type: boolean
  inputBinding:
    prefix: -s
- id: s
  doc: treat PE reads as SE in rmdup (force -s)
  type: boolean
  inputBinding:
    prefix: -S
outputs: []
cwlVersion: v1.1
baseCommand:
- samtools
- rmdup
