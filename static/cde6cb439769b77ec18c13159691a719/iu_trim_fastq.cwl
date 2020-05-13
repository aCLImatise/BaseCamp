class: CommandLineTool
id: iu_trim_fastq.cwl
inputs:
- id: f
  doc: ''
  type: long
  inputBinding:
    prefix: -f
- id: t
  doc: ''
  type: long
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- iu-trim-fastq
