class: CommandLineTool
id: strling_extract.cwl
inputs:
- id: bam
  doc: path to bam file
  type: string
  inputBinding:
    position: 0
- id: bin
  doc: path bin to output bin file to be created
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- strling
- extract
