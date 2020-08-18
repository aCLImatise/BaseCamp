class: CommandLineTool
id: ../../../regtools_junctions_annotate.cwl
inputs:
- id: single_exon_genes
  doc: single exon genes
  type: string
  inputBinding:
    prefix: -S
- id: file_write_output
  doc: The file to write output to. [STDOUT]
  type: File
  inputBinding:
    prefix: -o
- id: junctions_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: annotations_dot_gtf
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- regtools
- junctions
- annotate
