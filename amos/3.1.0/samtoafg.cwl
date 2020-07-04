class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/samtoafg.cwl
inputs:
- id: eid
  doc: the EID of the library
  type: boolean
  inputBinding:
    prefix: --eid
- id: iid
  doc: the IID of the library
  type: boolean
  inputBinding:
    prefix: --iid
- id: mean
  doc: the mean of the fragment-size
  type: boolean
  inputBinding:
    prefix: --mean
- id: sd
  doc: the standard deviation of the fragment-size
  type: boolean
  inputBinding:
    prefix: --sd
- id: abyss_sam_to_afg
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: contigs_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: alignments_dots_am
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- samtoafg
