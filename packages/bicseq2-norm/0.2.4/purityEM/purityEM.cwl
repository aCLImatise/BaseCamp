class: CommandLineTool
id: purityEM.cwl
inputs:
- id: in_output_name_default
  doc: ': the output name; default <stdout>'
  type: string
  inputBinding:
    prefix: -o
- id: in_print_best_model
  doc: ': print the best model for each ploidy number'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_max_it
  doc: ': maximum number of EM iterations; default 100'
  type: long
  inputBinding:
    prefix: --max_it
- id: in_epsilon
  doc: ': the convergence criterion; default 1e-6'
  type: double
  inputBinding:
    prefix: --epsilon
- id: in_m_ploidy
  doc: ": specify a rough upper bound of the ploidy number.\nA smaller value (e.g.\
    \ 4) is suggested as a larger value will make the program quite slow"
  type: boolean
  inputBinding:
    prefix: --mploidy
- id: in_max_comp
  doc: ": specify the maximum number of component in the mixture of normal model;\
    \ Default 15\nthis option will overload the option --mploidy; this is the default\
    \ method"
  type: boolean
  inputBinding:
    prefix: --maxComp
- id: in_nrs
  doc: ': the number of random starting values for the EM algorithm'
  type: boolean
  inputBinding:
    prefix: --nRS
- id: in_subsample
  doc: ': if specified, subsample 10000 observations (if there are more than 10000
    observations) for parameter estimation.'
  type: boolean
  inputBinding:
    prefix: --subsample
- id: in_input
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
- purityEM
