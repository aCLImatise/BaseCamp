class: CommandLineTool
id: mb_annotate_table.cwl
inputs:
- id: par_clip_table
  doc: path to parclip table
  type: string
  inputBinding:
    position: 0
- id: output_dir
  doc: output directory
  type: string
  inputBinding:
    position: 1
- id: gff3_an_not
  doc: paths to one or more gff3 annotation files
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-annotate-table
