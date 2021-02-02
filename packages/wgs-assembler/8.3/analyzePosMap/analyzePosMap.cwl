class: CommandLineTool
id: analyzePosMap.cwl
inputs:
- id: in_prefix_posmap_files
  doc: prefix of posmap files (e.g., posmap-prefix.posmap.frgctg)
  type: string
  inputBinding:
    prefix: -p
- id: in_prefix_output_files
  doc: prefix of output files
  type: string
  inputBinding:
    prefix: -o
- id: in_path_gkpstore_used
  doc: path to gkpStore (not used)
  type: File
  inputBinding:
    prefix: -g
- id: in_select_allowedreadsingaps_probability
  doc: "select an analysis (multiple -A allowed)\nreadsingaps - probability that a\
    \ gap can be filled with a read\nlibraryfate - per library detail of where each\
    \ read ended up\n- and the status of each mate\nsurrogates  -"
  type: string
  inputBinding:
    prefix: -A
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- analyzePosMap
