class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vcfintersect.cwl
inputs:
- id: merge_to
  doc: TO-TAG   merge from FROM-TAG used in the -i file, setting TO-TAG in the current
    file.
  type: boolean
  inputBinding:
    prefix: --merge-to
- id: vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfintersect
