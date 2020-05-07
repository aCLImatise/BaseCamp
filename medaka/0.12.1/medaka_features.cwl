class: CommandLineTool
id: medaka_features.cwl
inputs:
- id: bam
  doc: Input alignments.
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Output features file.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- medaka
- features
