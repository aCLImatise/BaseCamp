version 1.0

task DfgEval {
  input {
    Boolean? arg_calculate_posterior
    Boolean? arg_calculate_normalization
    Boolean? arg_calculate_state
    String? exp_file
    Boolean? arg_output_precision
    Boolean? pp_sum_other
    Boolean? output_natural_logarithm
    String? mps_vars
    String? pp_vars
    Boolean? arg_prefix_dfg
    String? factor_graph_file
    String? variables_file
    String? state_map_file
    String? fac_pot_file
    String? sub_var_file
    String input_var_data_dot_tab
    String? input_fac_data_dot_tab
  }
  command <<<
    dfgEval \
      ~{input_var_data_dot_tab} \
      ~{input_fac_data_dot_tab} \
      ~{true="-o" false="" arg_calculate_posterior} \
      ~{true="-n" false="" arg_calculate_normalization} \
      ~{true="-m" false="" arg_calculate_state} \
      ~{if defined(exp_file) then ("--expFile " +  '"' + exp_file + '"') else ""} \
      ~{true="-p" false="" arg_output_precision} \
      ~{true="--ppSumOther" false="" pp_sum_other} \
      ~{true="-l" false="" output_natural_logarithm} \
      ~{if defined(mps_vars) then ("--mpsVars " +  '"' + mps_vars + '"') else ""} \
      ~{if defined(pp_vars) then ("--ppVars " +  '"' + pp_vars + '"') else ""} \
      ~{true="-s" false="" arg_prefix_dfg} \
      ~{if defined(factor_graph_file) then ("--factorGraphFile " +  '"' + factor_graph_file + '"') else ""} \
      ~{if defined(variables_file) then ("--variablesFile " +  '"' + variables_file + '"') else ""} \
      ~{if defined(state_map_file) then ("--stateMapFile " +  '"' + state_map_file + '"') else ""} \
      ~{if defined(fac_pot_file) then ("--facPotFile " +  '"' + fac_pot_file + '"') else ""} \
      ~{if defined(sub_var_file) then ("--subVarFile " +  '"' + sub_var_file + '"') else ""}
  >>>
  parameter_meta {
    arg_calculate_posterior: "[ --ppFile ] arg                   Calculate posterior probabilities for  each state of each random variable and  output to file."
    arg_calculate_normalization: "[ --ncFile ] arg                   Calculate normalization constant output to file."
    arg_calculate_state: "[ --mpsFile ] arg                  Calculate most probable state for each  random variable and output to file."
    exp_file: "Calculate expectancies and output to  file"
    arg_output_precision: "[ --precision ] arg (=5)           Output precision of real numbers."
    pp_sum_other: "For post probs, for each state output  sum of post probs for all the other  states for that variable. This retains  precision for post probs very close to  one."
    output_natural_logarithm: "[ --minusLogarithm ]               Output minus the natural logarithm of  result values (program will terminate  on negative results...)."
    mps_vars: "Define the random variables for which  the most probable state (mps) should be output. Default is to output the mps  for all random variables. The  specification string must be enclosed  in citation marks and whitespace  separated if it includes more than one  random variable, e.g.: \"X Y\"."
    pp_vars: "Define the random variables for which  the posterior state probabilities (pp)  should be calculated. Default is to  output the pp for all states of all  random variables (may generate much  output!). Random variables are  specified similar to mpsVars, but must  be semicolon (';') separated. It is  possible to only output pp's for  certain states, in which case the  following specification format is used: \"X=a b c; Y=a b\"."
    arg_prefix_dfg: "[ --dfgSpecPrefix ] arg (=./dfgSpec/) Prefix of DFG specification files.."
    factor_graph_file: "(=factorGraph.txt) Specification of the factor graph  structure."
    variables_file: "(=variables.txt)  Specification of the state map used by  each variable."
    state_map_file: "(=stateMaps.txt)   Specification of state maps."
    fac_pot_file: "(=factorPotentials.txt) Specification of factor potentials."
    sub_var_file: "Input subscribed variables file in  named data format. Must use same  identifiers in same order as varFile"
    input_var_data_dot_tab: ""
    input_fac_data_dot_tab: ""
  }
}