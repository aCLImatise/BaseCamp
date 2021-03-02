class: CommandLineTool
id: netReg.cwl
inputs:
- id: in_arg_filename_design
  doc: '[ --design ] arg                  Filename of the design matrix X.'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_arg_filename_gx
  doc: '[ --gx ] arg                      Filename of the affinity matrix GX for'
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_arg_filename_gy
  doc: '[ --gy ] arg                      Filename of the affinity matrix GY for'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_arg_penalization_parameter_gx
  doc: "[ --psi ] arg (=0)                Penalization parameter for affinity\nmatrix\
    \ GX."
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_arg_penalization_parameter_affinitymatrix
  doc: "[ --xi ] arg (=0)                 Penalization parameter for affinity\nmatrix\
    \ GY."
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_arg_maximum_number
  doc: "[ --maxit ] arg (=100000)         Maximum number of iterations of\ncoordinate\
    \ descent. You should choose a\nsufficiently large number."
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_arg_convergence_threshold_coordinatedescent
  doc: "[ --threshold ] arg (=0.0000001)  Convergence threshold for coordinate\ndescent.\
    \ Anything below 0.0001 should\nsuffice."
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_arg_filename_output
  doc: '[ --outfile ] arg                 Filename of the output file.'
  type: File?
  inputBinding:
    prefix: -o
- id: in_model_selection
  doc: "Use modelselection, i.e. estimation of\noptimal shrinkage parameters using\n\
    crossvalition, before doing the\nestimation of coefficients."
  type: boolean?
  inputBinding:
    prefix: --modelselection
- id: in_arg_number_foldsthis
  doc: "[ --nfolds ] arg (=10)            The number of cross-validation folds.\n\
    This can be maximal the number of rows\nof X/Y and minimal 3."
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_arg_convergence_threshold_bobyqaalgorithm
  doc: "[ --epsilon ] arg (=0.001)        Convergence threshold for the BOBYQA\nalgorithm,\
    \ i.e. the stop criterion for\nthe model selection."
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_arg_maximal_number
  doc: "[ --bobit ] arg (=1000)           Maximal number of iterations for the\nBOBYQA\
    \ algorithm.\n"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_x_dot
  doc: -r [ --reponse ] arg                 Filename of the reponse matrix Y.
  type: string
  inputBinding:
    position: 0
- id: in_y_dot
  doc: -l [ --lambda ] arg (=1)             LASSO penalization parameter.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_filename_output
  doc: '[ --outfile ] arg                 Filename of the output file.'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_filename_output)
hints: []
cwlVersion: v1.1
baseCommand:
- netReg
