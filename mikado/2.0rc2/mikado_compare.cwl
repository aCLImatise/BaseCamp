class: CommandLineTool
id: mikado_compare.cwl
inputs:
- id: reference
  doc: Reference annotation file. By default, an index will be crated and saved with
    the suffix ".midx".
  type: string
  inputBinding:
    prefix: --reference
- id: prediction
  doc: Prediction annotation file.
  type: string
  inputBinding:
    prefix: --prediction
- id: self
  doc: Flag. If set, the reference will be compared with itself. Useful for understanding
    how the reference transcripts interact with each other. If this option is selected,
    the stats file will not be produced.
  type: boolean
  inputBinding:
    prefix: --self
- id: internal
  doc: Flag. If set, for each gene with more than one transcript isoform each will
    be compared to the others. Useful for understanding the structural relationships
    between the transcripts in each gene.
  type: boolean
  inputBinding:
    prefix: --internal
- id: index
  doc: Flag. If set, compare will stop after having generated the GFF index for the
    reference.
  type: boolean
  inputBinding:
    prefix: --index
outputs: []
cwlVersion: v1.1
baseCommand:
- mikado
- compare
