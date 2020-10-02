class: CommandLineTool
id: build_fixed.cwl
inputs:
- id: in_set_depth_model
  doc: Set depth of model to <num>
  type: long
  inputBinding:
    prefix: -d
- id: in_train_using_strings
  doc: "Train using strings specified by subscripts in file\nnamed <fn>"
  type: File
  inputBinding:
    prefix: -i
- id: in_n_permutation_describing
  doc: ",n2,...,nk  Permutation describing re-ordering of\ncharacter positions of\
    \ input string to build model"
  type: long
  inputBinding:
    prefix: -p
- id: in_specify_special_position
  doc: Specify special position in model
  type: long
  inputBinding:
    prefix: -s
- id: in_output_model_text
  doc: Output model as text (for debugging only)
  type: boolean
  inputBinding:
    prefix: -t
- id: in_set_level_higher
  doc: Set verbose level; higher is more diagnostic printouts
  type: long
  inputBinding:
    prefix: -v
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- build-fixed
