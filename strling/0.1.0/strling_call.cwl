class: CommandLineTool
id: strling_call.cwl
inputs:
- id: bam
  doc: path to bam file
  type: string
  inputBinding:
    position: 0
- id: bin
  doc: bin file previously created by `strling extract`
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- strling
- call
