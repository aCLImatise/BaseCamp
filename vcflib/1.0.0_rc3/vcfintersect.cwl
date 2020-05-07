class: CommandLineTool
id: vcfintersect.cwl
inputs:
- id: vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: merge_to
  doc: TO-TAG   merge from FROM-TAG used in the -i file, setting TO-TAG in the current
    file.
  type: boolean
  inputBinding:
    prefix: --merge-to
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfintersect
