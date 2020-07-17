class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/iu_trim_fastq.cwl
inputs:
- id: trim_from
  doc: Trim from
  type: long
  inputBinding:
    prefix: --trim-from
- id: trim_to
  doc: Trim to
  type: long
  inputBinding:
    prefix: --trim-to
- id: var_2
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: var_3
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- iu-trim-fastq
