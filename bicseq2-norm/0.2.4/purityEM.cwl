class: CommandLineTool
id: purityEM.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: o
  doc: ': the output name; default <stdout>'
  type: string
  inputBinding:
    prefix: -o
- id: p
  doc: ': print the best model for each ploidy number'
  type: boolean
  inputBinding:
    prefix: -p
- id: max_it
  doc: ': maximum number of EM iterations; default 100'
  type: long
  inputBinding:
    prefix: --max_it
- id: epsilon
  doc: ': the convergence criterion; default 1e-6'
  type: double
  inputBinding:
    prefix: --epsilon
- id: m_ploidy
  doc: ': specify a rough upper bound of the ploidy number. A smaller value (e.g.
    4) is suggested as a larger value will make the program quite slow'
  type: boolean
  inputBinding:
    prefix: --mploidy
- id: max_comp
  doc: ': specify the maximum number of component in the mixture of normal model;
    Default 15 this option will overload the option --mploidy; this is the default
    method'
  type: boolean
  inputBinding:
    prefix: --maxComp
- id: nrs
  doc: ': the number of random starting values for the EM algorithm'
  type: boolean
  inputBinding:
    prefix: --nRS
- id: subsample
  doc: ': if specified, subsample 10000 observations (if there are more than 10000
    observations) for parameter estimation.'
  type: boolean
  inputBinding:
    prefix: --subsample
outputs: []
cwlVersion: v1.1
baseCommand:
- purityEM
