class: CommandLineTool
id: bioformats_gff2to3.cwl
inputs:
- id: in_ignore_incorrect_records
  doc: "ignore incorrect records in the specified input GFF2\nfile\n"
  type: boolean
  inputBinding:
    prefix: --ignore_incorrect_records
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_gff_two_file
  doc: a GFF2 file
  type: long
  inputBinding:
    position: 0
- id: in_output_file
  doc: the output GFF3 file
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bioformats
- gff2to3
