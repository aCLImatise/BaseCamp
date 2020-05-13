class: CommandLineTool
id: netReg.cwl
inputs:
- id: d
  doc: '[ --design ] arg                  Filename of the design matrix X.'
  type: boolean
  inputBinding:
    prefix: -d
- id: u
  doc: '[ --gx ] arg                      Filename of the affinity matrix GX for  X.'
  type: boolean
  inputBinding:
    prefix: -u
- id: r
  doc: '[ --reponse ] arg                 Filename of the reponse matrix Y.'
  type: boolean
  inputBinding:
    prefix: -r
- id: v
  doc: '[ --gy ] arg                      Filename of the affinity matrix GY for  Y.'
  type: boolean
  inputBinding:
    prefix: -v
- id: l
  doc: '[ --lambda ] arg (=1)             LASSO penalization parameter.'
  type: boolean
  inputBinding:
    prefix: -l
- id: s
  doc: '[ --psi ] arg (=0)                Penalization parameter for affinity  matrix
    GX.'
  type: boolean
  inputBinding:
    prefix: -s
- id: x
  doc: '[ --xi ] arg (=0)                 Penalization parameter for affinity  matrix
    GY.'
  type: boolean
  inputBinding:
    prefix: -x
- id: m
  doc: '[ --maxit ] arg (=100000)         Maximum number of iterations of  coordinate
    descent. You should choose a  sufficiently large number.'
  type: boolean
  inputBinding:
    prefix: -m
- id: t
  doc: '[ --threshold ] arg (=0.0000001)  Convergence threshold for coordinate  descent.
    Anything below 0.0001 should  suffice.'
  type: boolean
  inputBinding:
    prefix: -t
- id: o
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
- id: n
  doc: '[ --nfolds ] arg (=10)            The number of cross-validation folds.  This
    can be maximal the number of rows  of X/Y and minimal 3.'
  type: boolean
  inputBinding:
    prefix: -n
- id: e
  doc: '[ --epsilon ] arg (=0.001)        Convergence threshold for the BOBYQA  algorithm,
    i.e. the stop criterion for  the model selection.'
  type: boolean
  inputBinding:
    prefix: -e
- id: b
  doc: '[ --bobit ] arg (=1000)           Maximal number of iterations for the  BOBYQA
    algorithm.'
  type: boolean
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- netReg
