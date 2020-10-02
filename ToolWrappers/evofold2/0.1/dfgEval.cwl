class: CommandLineTool
id: dfgEval.cwl
inputs:
- id: in_arg_calculate_posterior
  doc: "[ --ppFile ] arg                   Calculate posterior probabilities for\n\
    each state of each random variable and\noutput to file."
  type: File
  inputBinding:
    prefix: -o
- id: in_arg_calculate_normalization
  doc: "[ --ncFile ] arg                   Calculate normalization constant output\n\
    to file."
  type: File
  inputBinding:
    prefix: -n
- id: in_arg_calculate_state
  doc: "[ --mpsFile ] arg                  Calculate most probable state for each\n\
    random variable and output to file."
  type: File
  inputBinding:
    prefix: -m
- id: in_exp_file
  doc: Calculate expectancies and output to
  type: string
  inputBinding:
    prefix: --expFile
- id: in_pp_sum_other
  doc: "For post probs, for each state output\nsum of post probs for all the other\n\
    states for that variable. This retains\nprecision for post probs very close to\n\
    one."
  type: boolean
  inputBinding:
    prefix: --ppSumOther
- id: in_output_natural_logarithm
  doc: "[ --minusLogarithm ]               Output minus the natural logarithm of\n\
    result values (program will terminate\non negative results...)."
  type: boolean
  inputBinding:
    prefix: -l
- id: in_mps_vars
  doc: "Define the random variables for which\nthe most probable state (mps) should\
    \ be\noutput. Default is to output the mps\nfor all random variables. The\nspecification\
    \ string must be enclosed\nin citation marks and whitespace\nseparated if it includes\
    \ more than one\nrandom variable, e.g.: \"X Y\"."
  type: string
  inputBinding:
    prefix: --mpsVars
- id: in_pp_vars
  doc: "Define the random variables for which\nthe posterior state probabilities (pp)\n\
    should be calculated. Default is to\noutput the pp for all states of all\nrandom\
    \ variables (may generate much\noutput!). Random variables are\nspecified similar\
    \ to mpsVars, but must\nbe semicolon (';') separated. It is\npossible to only\
    \ output pp's for\ncertain states, in which case the\nfollowing specification\
    \ format is used:\n\"X=a b c; Y=a b\"."
  type: string
  inputBinding:
    prefix: --ppVars
- id: in_arg_dfgspecprefix_dfg
  doc: "[ --dfgSpecPrefix ] arg (=./dfgSpec/)\nPrefix of DFG specification files.."
  type: boolean
  inputBinding:
    prefix: -s
- id: in_factor_graph_file
  doc: "(=factorGraph.txt)\nSpecification of the factor graph\nstructure."
  type: string
  inputBinding:
    prefix: --factorGraphFile
- id: in_variables_file
  doc: "(=variables.txt)  Specification of the state map used by\neach variable."
  type: string
  inputBinding:
    prefix: --variablesFile
- id: in_state_map_file
  doc: (=stateMaps.txt)   Specification of state maps.
  type: string
  inputBinding:
    prefix: --stateMapFile
- id: in_fac_pot_file
  doc: "(=factorPotentials.txt)\nSpecification of factor potentials."
  type: string
  inputBinding:
    prefix: --facPotFile
- id: in_sub_var_file
  doc: "Input subscribed variables file in\nnamed data format. Must use same\nidentifiers\
    \ in same order as varFile\n"
  type: File
  inputBinding:
    prefix: --subVarFile
- id: in_file
  doc: -p [ --precision ] arg (=5)           Output precision of real numbers.
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_calculate_posterior
  doc: "[ --ppFile ] arg                   Calculate posterior probabilities for\n\
    each state of each random variable and\noutput to file."
  type: File
  outputBinding:
    glob: $(inputs.in_arg_calculate_posterior)
- id: out_arg_calculate_normalization
  doc: "[ --ncFile ] arg                   Calculate normalization constant output\n\
    to file."
  type: File
  outputBinding:
    glob: $(inputs.in_arg_calculate_normalization)
- id: out_arg_calculate_state
  doc: "[ --mpsFile ] arg                  Calculate most probable state for each\n\
    random variable and output to file."
  type: File
  outputBinding:
    glob: $(inputs.in_arg_calculate_state)
cwlVersion: v1.1
baseCommand:
- dfgEval
