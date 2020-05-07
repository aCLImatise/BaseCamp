class: CommandLineTool
id: dfgEval.cwl
inputs:
- id: input_var_data_tab
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_fac_data_tab
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: o
  doc: '[ --ppFile ] arg                   Calculate posterior probabilities for  each
    state of each random variable and  output to file.'
  type: boolean
  inputBinding:
    prefix: -o
- id: n
  doc: '[ --ncFile ] arg                   Calculate normalization constant output
    to file.'
  type: boolean
  inputBinding:
    prefix: -n
- id: m
  doc: '[ --mpsFile ] arg                  Calculate most probable state for each  random
    variable and output to file.'
  type: boolean
  inputBinding:
    prefix: -m
- id: exp_file
  doc: Calculate expectancies and output to  file
  type: string
  inputBinding:
    prefix: --expFile
- id: p
  doc: '[ --precision ] arg (=5)           Output precision of real numbers.'
  type: boolean
  inputBinding:
    prefix: -p
- id: pp_sum_other
  doc: For post probs, for each state output  sum of post probs for all the other  states
    for that variable. This retains  precision for post probs very close to  one.
  type: boolean
  inputBinding:
    prefix: --ppSumOther
- id: l
  doc: '[ --minusLogarithm ]               Output minus the natural logarithm of  result
    values (program will terminate  on negative results...).'
  type: boolean
  inputBinding:
    prefix: -l
- id: mps_vars
  doc: 'Define the random variables for which  the most probable state (mps) should
    be output. Default is to output the mps  for all random variables. The  specification
    string must be enclosed  in citation marks and whitespace  separated if it includes
    more than one  random variable, e.g.: "X Y".'
  type: string
  inputBinding:
    prefix: --mpsVars
- id: pp_vars
  doc: "Define the random variables for which  the posterior state probabilities (pp)\
    \  should be calculated. Default is to  output the pp for all states of all  random\
    \ variables (may generate much  output!). Random variables are  specified similar\
    \ to mpsVars, but must  be semicolon (';') separated. It is  possible to only\
    \ output pp's for  certain states, in which case the  following specification\
    \ format is used: \"X=a b c; Y=a b\"."
  type: string
  inputBinding:
    prefix: --ppVars
- id: s
  doc: '[ --dfgSpecPrefix ] arg (=./dfgSpec/) Prefix of DFG specification files..'
  type: boolean
  inputBinding:
    prefix: -s
- id: factor_graph_file
  doc: (=factorGraph.txt) Specification of the factor graph  structure.
  type: string
  inputBinding:
    prefix: --factorGraphFile
- id: variables_file
  doc: (=variables.txt)  Specification of the state map used by  each variable.
  type: string
  inputBinding:
    prefix: --variablesFile
- id: state_map_file
  doc: (=stateMaps.txt)   Specification of state maps.
  type: string
  inputBinding:
    prefix: --stateMapFile
- id: fac_pot_file
  doc: (=factorPotentials.txt) Specification of factor potentials.
  type: string
  inputBinding:
    prefix: --facPotFile
- id: sub_var_file
  doc: Input subscribed variables file in  named data format. Must use same  identifiers
    in same order as varFile
  type: string
  inputBinding:
    prefix: --subVarFile
outputs: []
cwlVersion: v1.1
baseCommand:
- dfgEval
