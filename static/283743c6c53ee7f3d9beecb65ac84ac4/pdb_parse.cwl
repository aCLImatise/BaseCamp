class: CommandLineTool
id: pdb_parse.pl.cwl
inputs:
- id: pdb_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sto_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: rs_cape_bin
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: gnuplot_dir
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- pdb_parse.pl
