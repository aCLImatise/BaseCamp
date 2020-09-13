version 1.0

task DfgTrain {
  input {
    Boolean? arg_output_precision
    Boolean? arg_defines_stopping
    Boolean? arg_max_numbr
    Boolean? arg_logfiletxt_log
    Boolean? perform_em_training
    File? dotfile
    Boolean? arg_dfgspecprefix_dfg
    Boolean? arg_out_directory
    Boolean? arg_prefix_dfg
    String? factor_graph_file
    String? variables_file
    String? state_map_file
    String? fac_pot_file
    File? sub_var_file
    Boolean? write_info
    String input_var_data_dot_tab
    String? input_fac_data_dot_tab
  }
  command <<<
    dfgTrain \
      ~{input_var_data_dot_tab} \
      ~{input_fac_data_dot_tab} \
      ~{if (arg_output_precision) then "-p" else ""} \
      ~{if (arg_defines_stopping) then "-d" else ""} \
      ~{if (arg_max_numbr) then "-i" else ""} \
      ~{if (arg_logfiletxt_log) then "-l" else ""} \
      ~{if (perform_em_training) then "-e" else ""} \
      ~{if defined(dotfile) then ("--dotFile " +  '"' + dotfile + '"') else ""} \
      ~{if (arg_dfgspecprefix_dfg) then "-s" else ""} \
      ~{if (arg_out_directory) then "-o" else ""} \
      ~{if (arg_prefix_dfg) then "-t" else ""} \
      ~{if defined(factor_graph_file) then ("--factorGraphFile " +  '"' + factor_graph_file + '"') else ""} \
      ~{if defined(variables_file) then ("--variablesFile " +  '"' + variables_file + '"') else ""} \
      ~{if defined(state_map_file) then ("--stateMapFile " +  '"' + state_map_file + '"') else ""} \
      ~{if defined(fac_pot_file) then ("--facPotFile " +  '"' + fac_pot_file + '"') else ""} \
      ~{if defined(sub_var_file) then ("--subVarFile " +  '"' + sub_var_file + '"') else ""} \
      ~{if (write_info) then "--writeInfo" else ""}
  >>>
  parameter_meta {
    arg_output_precision: "[ --precision ] arg (=5)           Output precision of real numbers."
    arg_defines_stopping: "[ --minDeltaLogLik ] arg (=0.0001) Defines stopping criteria for the EM\\ntraining. The training will stop when\\nthe difference in log likelihood is\\nbelow minDeltaLogLik (default is 1e-4)."
    arg_max_numbr: "[ --maxIter ] arg (=100)           Max numbr if iterations of the EM\\ntraining (default is 100)."
    arg_logfiletxt_log: "[ --logFile ] arg (=logFile.txt)   Log file for EM training."
    perform_em_training: "[ --emTrain ]                      Perform EM training."
    dotfile: "Output dfg in dot format to given\\nfileName. (To convert to ps format,\\ne.g. run: \\\"cat fileName.dot | dot -Tps\\n-Kneato -Gsize=\\\"7.5,10\\\" -o dfg.ps\\\".)"
    arg_dfgspecprefix_dfg: "[ --dfgSpecPrefix ] arg (=./dfgSpec/)\\nPrefix of DFG specification files."
    arg_out_directory: "[ --outSpecPrefix ] arg (=out_)    Prefix of DFG specification files. Any\\nincluded prefix directory must already\\nexist."
    arg_prefix_dfg: "[ --tmpSpecPrefix ] arg            Prefix of DFG specification files\\nwritten during each iteration of\\ntraining. Allows state of EM to be\\nsaved - especially useful for large\\ndatasets. Any included prefix directory\\nmust already exist. Not defined and not\\nperformed by default."
    factor_graph_file: "(=factorGraph.txt)\\nSpecification of the factor graph\\nstructure."
    variables_file: "(=variables.txt)  Specification of the state map used by\\neach variable."
    state_map_file: "(=stateMaps.txt)   Specification of state maps."
    fac_pot_file: "(=factorPotentials.txt)\\nSpecification of factor potentials."
    sub_var_file: "Input subscribed variables file in\\nnamed data format. Must use same\\nidentifiers in same order as varFile"
    write_info: "Print factor graph info. Useful for\\ndebugging factor graph specification.\\n"
    input_var_data_dot_tab: ""
    input_fac_data_dot_tab: ""
  }
  output {
    File out_stdout = stdout()
    File out_dotfile = "${in_dotfile}"
  }
}