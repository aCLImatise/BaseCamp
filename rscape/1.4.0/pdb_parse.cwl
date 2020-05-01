#!/usr/bin/env cwl-runner

baseCommand:
- pdb_parse.pl
class: CommandLineTool
cwlVersion: v1.0
id: pdb_parse.pl
inputs:
- doc: ''
  id: pdb_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: sto_file
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: rs_cape_bin
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: gnuplot_dir
  inputBinding:
    position: 3
  type: string
