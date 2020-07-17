class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/makeset.cwl
inputs:
- id: bioseqsetrelease__optional
  doc: Bioseq-set.release [String]  Optional
  type: boolean
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- makeset
