#!/usr/bin/env cwl-runner

baseCommand:
- dfgEval
class: CommandLineTool
cwlVersion: v1.0
id: dfgeval
inputs:
- doc: ''
  id: input_var_data_tab
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: input_fac_data_tab
  inputBinding:
    position: 1
  type: string
- doc: '[ --ppFile ] arg                   Calculate posterior probabilities for  each
    state of each random variable and  output to file.'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[ --ncFile ] arg                   Calculate normalization constant output
    to file.'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: '[ --mpsFile ] arg                  Calculate most probable state for each  random
    variable and output to file.'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: Calculate expectancies and output to  file
  id: exp_file
  inputBinding:
    prefix: --expFile
  type: string
- doc: '[ --precision ] arg (=5)           Output precision of real numbers.'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: For post probs, for each state output  sum of post probs for all the other  states
    for that variable. This retains  precision for post probs very close to  one.
  id: pp_sum_other
  inputBinding:
    prefix: --ppSumOther
  type: boolean
- doc: '[ --minusLogarithm ]               Output minus the natural logarithm of  result
    values (program will terminate  on negative results...).'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: 'Define the random variables for which  the most probable state (mps) should
    be output. Default is to output the mps  for all random variables. The  specification
    string must be enclosed  in citation marks and whitespace  separated if it includes
    more than one  random variable, e.g.: "X Y".'
  id: mps_vars
  inputBinding:
    prefix: --mpsVars
  type: string
- doc: "Define the random variables for which  the posterior state probabilities (pp)\
    \  should be calculated. Default is to  output the pp for all states of all  random\
    \ variables (may generate much  output!). Random variables are  specified similar\
    \ to mpsVars, but must  be semicolon (';') separated. It is  possible to only\
    \ output pp's for  certain states, in which case the  following specification\
    \ format is used: \"X=a b c; Y=a b\"."
  id: pp_vars
  inputBinding:
    prefix: --ppVars
  type: string
- doc: '[ --dfgSpecPrefix ] arg (=./dfgSpec/) Prefix of DFG specification files..'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: (=factorGraph.txt) Specification of the factor graph  structure.
  id: factor_graph_file
  inputBinding:
    prefix: --factorGraphFile
  type: string
- doc: (=variables.txt)  Specification of the state map used by  each variable.
  id: variables_file
  inputBinding:
    prefix: --variablesFile
  type: string
- doc: (=stateMaps.txt)   Specification of state maps.
  id: state_map_file
  inputBinding:
    prefix: --stateMapFile
  type: string
- doc: (=factorPotentials.txt) Specification of factor potentials.
  id: fac_pot_file
  inputBinding:
    prefix: --facPotFile
  type: string
- doc: Input subscribed variables file in  named data format. Must use same  identifiers
    in same order as varFile
  id: sub_var_file
  inputBinding:
    prefix: --subVarFile
  type: string
