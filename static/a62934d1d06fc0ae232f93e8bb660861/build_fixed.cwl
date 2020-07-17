class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/build_fixed.cwl
inputs:
- id: set_depth_model
  doc: Set depth of model to <num>
  type: string
  inputBinding:
    prefix: -d
- id: train_using_strings
  doc: Train using strings specified by subscripts in file named <fn>
  type: string
  inputBinding:
    prefix: -i
- id: n_permutation_describing
  doc: ',n2,...,nk  Permutation describing re-ordering of character positions of input
    string to build model'
  type: string
  inputBinding:
    prefix: -p
- id: specify_special_position
  doc: Specify special position in model
  type: string
  inputBinding:
    prefix: -s
- id: output_model_text
  doc: Output model as text (for debugging only)
  type: boolean
  inputBinding:
    prefix: -t
- id: set_level_higher
  doc: Set verbose level; higher is more diagnostic printouts
  type: string
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- build-fixed
