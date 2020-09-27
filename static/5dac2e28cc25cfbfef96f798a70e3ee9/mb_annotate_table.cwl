class: CommandLineTool
id: mb_annotate_table.cwl
inputs:
- id: in_max_n
  doc: ''
  type: long
  inputBinding:
    prefix: --max_n
- id: in_par_clip_table
  doc: path to parclip table
  type: string
  inputBinding:
    position: 0
- id: in_output_dir
  doc: output directory
  type: string
  inputBinding:
    position: 1
- id: in_gff_three_an_not
  doc: paths to one or more gff3 annotation files
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mb-annotate-table
