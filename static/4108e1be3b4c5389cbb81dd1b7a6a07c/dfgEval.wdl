version 1.0

task DfgEval {
  input {
    File? arg_calculate_posterior
    File? arg_calculate_normalization
    File? arg_calculate_state
    String? exp_file
    Boolean? pp_sum_other
    Boolean? output_natural_logarithm
    String? mps_vars
    String? pp_vars
    Boolean? arg_dfgspecprefix_dfg
    String? factor_graph_file
    String? variables_file
    String? state_map_file
    String? fac_pot_file
    File? sub_var_file
    File file
  }
  command <<<
    dfgEval \
      ~{file} \
      ~{if (arg_calculate_posterior) then "-o" else ""} \
      ~{if (arg_calculate_normalization) then "-n" else ""} \
      ~{if (arg_calculate_state) then "-m" else ""} \
      ~{if defined(exp_file) then ("--expFile " +  '"' + exp_file + '"') else ""} \
      ~{if (pp_sum_other) then "--ppSumOther" else ""} \
      ~{if (output_natural_logarithm) then "-l" else ""} \
      ~{if defined(mps_vars) then ("--mpsVars " +  '"' + mps_vars + '"') else ""} \
      ~{if defined(pp_vars) then ("--ppVars " +  '"' + pp_vars + '"') else ""} \
      ~{if (arg_dfgspecprefix_dfg) then "-s" else ""} \
      ~{if defined(factor_graph_file) then ("--factorGraphFile " +  '"' + factor_graph_file + '"') else ""} \
      ~{if defined(variables_file) then ("--variablesFile " +  '"' + variables_file + '"') else ""} \
      ~{if defined(state_map_file) then ("--stateMapFile " +  '"' + state_map_file + '"') else ""} \
      ~{if defined(fac_pot_file) then ("--facPotFile " +  '"' + fac_pot_file + '"') else ""} \
      ~{if defined(sub_var_file) then ("--subVarFile " +  '"' + sub_var_file + '"') else ""}
  >>>
  parameter_meta {
    arg_calculate_posterior: "[ --ppFile ] arg                   Calculate posterior probabilities for\\neach state of each random variable and\\noutput to file."
    arg_calculate_normalization: "[ --ncFile ] arg                   Calculate normalization constant output\\nto file."
    arg_calculate_state: "[ --mpsFile ] arg                  Calculate most probable state for each\\nrandom variable and output to file."
    exp_file: "Calculate expectancies and output to"
    pp_sum_other: "For post probs, for each state output\\nsum of post probs for all the other\\nstates for that variable. This retains\\nprecision for post probs very close to\\none."
    output_natural_logarithm: "[ --minusLogarithm ]               Output minus the natural logarithm of\\nresult values (program will terminate\\non negative results...)."
    mps_vars: "Define the random variables for which\\nthe most probable state (mps) should be\\noutput. Default is to output the mps\\nfor all random variables. The\\nspecification string must be enclosed\\nin citation marks and whitespace\\nseparated if it includes more than one\\nrandom variable, e.g.: \\\"X Y\\\"."
    pp_vars: "Define the random variables for which\\nthe posterior state probabilities (pp)\\nshould be calculated. Default is to\\noutput the pp for all states of all\\nrandom variables (may generate much\\noutput!). Random variables are\\nspecified similar to mpsVars, but must\\nbe semicolon (';') separated. It is\\npossible to only output pp's for\\ncertain states, in which case the\\nfollowing specification format is used:\\n\\\"X=a b c; Y=a b\\\"."
    arg_dfgspecprefix_dfg: "[ --dfgSpecPrefix ] arg (=./dfgSpec/)\\nPrefix of DFG specification files.."
    factor_graph_file: "(=factorGraph.txt)\\nSpecification of the factor graph\\nstructure."
    variables_file: "(=variables.txt)  Specification of the state map used by\\neach variable."
    state_map_file: "(=stateMaps.txt)   Specification of state maps."
    fac_pot_file: "(=factorPotentials.txt)\\nSpecification of factor potentials."
    sub_var_file: "Input subscribed variables file in\\nnamed data format. Must use same\\nidentifiers in same order as varFile\\n"
    file: "-p [ --precision ] arg (=5)           Output precision of real numbers."
  }
  output {
    File out_stdout = stdout()
    File out_arg_calculate_posterior = "${in_arg_calculate_posterior}"
    File out_arg_calculate_normalization = "${in_arg_calculate_normalization}"
    File out_arg_calculate_state = "${in_arg_calculate_state}"
  }
}