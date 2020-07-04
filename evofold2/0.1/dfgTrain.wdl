version 1.0

task DfgTrain {
  input {
    Boolean? arg_output_precision
    Boolean? arg_defines_stopping
    Boolean? arg_max_numbr
    Boolean? arg_logfiletxt_log
    Boolean? perform_em_training
    String? dotfile
    Boolean? arg_prefix_dfg
    Boolean? arg__prefix
    Boolean? arg_prefix_written
    String? factor_graph_file
    String? variables_file
    String? state_map_file
    String? fac_pot_file
    String? sub_var_file
    Boolean? write_info
    String input_var_data_dot_tab
    String? input_fac_data_dot_tab
  }
  command <<<
    dfgTrain \
      ~{input_var_data_dot_tab} \
      ~{input_fac_data_dot_tab} \
      ~{true="-p" false="" arg_output_precision} \
      ~{true="-d" false="" arg_defines_stopping} \
      ~{true="-i" false="" arg_max_numbr} \
      ~{true="-l" false="" arg_logfiletxt_log} \
      ~{true="-e" false="" perform_em_training} \
      ~{if defined(dotfile) then ("--dotFile " +  '"' + dotfile + '"') else ""} \
      ~{true="-s" false="" arg_prefix_dfg} \
      ~{true="-o" false="" arg__prefix} \
      ~{true="-t" false="" arg_prefix_written} \
      ~{if defined(factor_graph_file) then ("--factorGraphFile " +  '"' + factor_graph_file + '"') else ""} \
      ~{if defined(variables_file) then ("--variablesFile " +  '"' + variables_file + '"') else ""} \
      ~{if defined(state_map_file) then ("--stateMapFile " +  '"' + state_map_file + '"') else ""} \
      ~{if defined(fac_pot_file) then ("--facPotFile " +  '"' + fac_pot_file + '"') else ""} \
      ~{if defined(sub_var_file) then ("--subVarFile " +  '"' + sub_var_file + '"') else ""} \
      ~{true="--writeInfo" false="" write_info}
  >>>
  parameter_meta {
    arg_output_precision: "[ --precision ] arg (=5)           Output precision of real numbers."
    arg_defines_stopping: "[ --minDeltaLogLik ] arg (=0.0001) Defines stopping criteria for the EM  training. The training will stop when  the difference in log likelihood is  below minDeltaLogLik (default is 1e-4)."
    arg_max_numbr: "[ --maxIter ] arg (=100)           Max numbr if iterations of the EM  training (default is 100)."
    arg_logfiletxt_log: "[ --logFile ] arg (=logFile.txt)   Log file for EM training."
    perform_em_training: "[ --emTrain ]                      Perform EM training."
    dotfile: "Output dfg in dot format to given  fileName. (To convert to ps format,  e.g. run: \"cat fileName.dot | dot -Tps  -Kneato -Gsize=\"7.5,10\" -o dfg.ps\".)"
    arg_prefix_dfg: "[ --dfgSpecPrefix ] arg (=./dfgSpec/) Prefix of DFG specification files."
    arg__prefix: "[ --outSpecPrefix ] arg (=out_)    Prefix of DFG specification files. Any  included prefix directory must already  exist."
    arg_prefix_written: "[ --tmpSpecPrefix ] arg            Prefix of DFG specification files  written during each iteration of  training. Allows state of EM to be  saved - especially useful for large  datasets. Any included prefix directory must already exist. Not defined and not performed by default. "
    factor_graph_file: "(=factorGraph.txt) Specification of the factor graph  structure."
    variables_file: "(=variables.txt)  Specification of the state map used by  each variable."
    state_map_file: "(=stateMaps.txt)   Specification of state maps."
    fac_pot_file: "(=factorPotentials.txt) Specification of factor potentials."
    sub_var_file: "Input subscribed variables file in  named data format. Must use same  identifiers in same order as varFile"
    write_info: "Print factor graph info. Useful for  debugging factor graph specification."
    input_var_data_dot_tab: ""
    input_fac_data_dot_tab: ""
  }
}