class: CommandLineTool
id: makeset.cwl
inputs:
- id: r
  doc: Bioseq-set.release [String]  Optional
  type: boolean
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- makeset
