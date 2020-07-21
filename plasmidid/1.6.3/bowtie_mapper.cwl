class: CommandLineTool
id: ../../../bowtie_mapper.sh.cwl
inputs:
- id: usage_message
  doc: usage message
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- bowtie_mapper.sh
