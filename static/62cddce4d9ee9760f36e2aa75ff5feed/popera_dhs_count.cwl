class: CommandLineTool
id: popera_dhs_count.cwl
inputs:
- id: data
  doc: data file, should be sorted bam format, example=DH_sample1.bam,DH_sample2.bam
  type: string
  inputBinding:
    prefix: --data
- id: name
  doc: NH sample name default=DH_sample1,DH_sample2
  type: string
  inputBinding:
    prefix: --name
- id: bed
  doc: bed file, example=DH_sample1.bed,DH_sample2.bed
  type: string
  inputBinding:
    prefix: --bed
- id: minlength
  doc: minimum length of merged hot spots, default=5
  type: long
  inputBinding:
    prefix: --minlength
- id: threads
  doc: threads number or cpu number, default=4
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- popera_dhs_count
