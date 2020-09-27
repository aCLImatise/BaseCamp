class: CommandLineTool
id: segway_winner.cwl
inputs:
- id: in_input_master
  doc: print input master file name
  type: boolean
  inputBinding:
    prefix: --input-master
- id: in_params
  doc: print parameters file name
  type: boolean
  inputBinding:
    prefix: --params
- id: in_copy
  doc: copy files to final winning file locations
  type: boolean
  inputBinding:
    prefix: --copy
- id: in_clobber
  doc: overwrite existing files
  type: boolean
  inputBinding:
    prefix: --clobber
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- segway-winner
