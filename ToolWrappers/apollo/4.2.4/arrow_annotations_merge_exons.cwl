class: CommandLineTool
id: ../../../arrow_annotations_merge_exons.cwl
inputs:
- id: in_organism
  doc: Organism Common Name
  type: string
  inputBinding:
    prefix: --organism
- id: in_sequence
  doc: Sequence Name
  type: string
  inputBinding:
    prefix: --sequence
- id: in_exon_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_exon_b
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- arrow
- annotations
- merge_exons
