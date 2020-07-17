class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/netReg.cwl
inputs:
- id: arg_filename_design
  doc: '[ --design ] arg                  Filename of the design matrix X.'
  type: boolean
  inputBinding:
    prefix: -d
- id: affinity_matrix_gx
  doc: '[ --gx ] arg                      Filename of the affinity matrix GX for  X.'
  type: boolean
  inputBinding:
    prefix: -u
- id: arg_filename_reponse
  doc: '[ --reponse ] arg                 Filename of the reponse matrix Y.'
  type: boolean
  inputBinding:
    prefix: -r
- id: affinity_matrix_gy
  doc: '[ --gy ] arg                      Filename of the affinity matrix GY for  Y.'
  type: boolean
  inputBinding:
    prefix: -v
- id: arg_lasso_penalization
  doc: '[ --lambda ] arg (=1)             LASSO penalization parameter.'
  type: boolean
  inputBinding:
    prefix: -l
- id: arg_penalization_parameter_affinity_matrix_gx
  doc: '[ --psi ] arg (=0)                Penalization parameter for affinity  matrix
    GX.'
  type: boolean
  inputBinding:
    prefix: -s
- id: arg_penalization_parameter_affinity_matrix_gy
  doc: '[ --xi ] arg (=0)                 Penalization parameter for affinity  matrix
    GY.'
  type: boolean
  inputBinding:
    prefix: -x
- id: arg_maximum_number
  doc: '[ --maxit ] arg (=100000)         Maximum number of iterations of  coordinate
    descent. You should choose a  sufficiently large number.'
  type: boolean
  inputBinding:
    prefix: -m
- id: arg_convergence_threshold_coordinate
  doc: '[ --threshold ] arg (=0.0000001)  Convergence threshold for coordinate  descent.
    Anything below 0.0001 should  suffice.'
  type: boolean
  inputBinding:
    prefix: -t
- id: arg_filename_output
  doc: '[ --outfile ] arg                 Filename of the output file.'
  type: boolean
  inputBinding:
    prefix: -o
- id: model_selection
  doc: Use modelselection, i.e. estimation of  optimal shrinkage parameters using  crossvalition,
    before doing the  estimation of coefficients.
  type: boolean
  inputBinding:
    prefix: --modelselection
- id: arg_number_crossvalidation
  doc: '[ --nfolds ] arg (=10)            The number of cross-validation folds.  This
    can be maximal the number of rows  of X/Y and minimal 3.'
  type: boolean
  inputBinding:
    prefix: -n
- id: arg_convergence_threshold_bobyqa
  doc: '[ --epsilon ] arg (=0.001)        Convergence threshold for the BOBYQA  algorithm,
    i.e. the stop criterion for  the model selection.'
  type: boolean
  inputBinding:
    prefix: -e
- id: arg_maximal_number
  doc: '[ --bobit ] arg (=1000)           Maximal number of iterations for the  BOBYQA
    algorithm.'
  type: boolean
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- netReg
