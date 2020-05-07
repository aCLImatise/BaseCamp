class: CommandLineTool
id: regtools_junctions_annotate.cwl
inputs:
- id: junctions_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: re_ffa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: annotations_gtf
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: s
  doc: single exon genes
  type: string
  inputBinding:
    prefix: -S
- id: o
  doc: The file to write output to. [STDOUT]
  type: File
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- regtools
- junctions
- annotate
