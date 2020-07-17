class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bioformats_gff2to3.cwl
inputs:
- id: ignore_incorrect_records
  doc: ignore incorrect records in the specified input GFF2 file
  type: boolean
  inputBinding:
    prefix: --ignore_incorrect_records
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: gff_two_file
  doc: a GFF2 file
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: the output GFF3 file
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bioformats
- gff2to3
