version 1.0

task GrammarTrain {
  input {
    Boolean? arg_file_newick
    Boolean? arg_anno_map
    Boolean? arg_name_use
    Boolean? arg_defines_number
    Boolean? arg_defines_stopping
    Boolean? arg_max_numbr
    Boolean? arg_grammarlogfiletxt_log
    String grammar_dot_txt
    String emit_models_dot_txt
    String alg_do_tama
  }
  command <<<
    grammarTrain \
      ~{grammar_dot_txt} \
      ~{emit_models_dot_txt} \
      ~{alg_do_tama} \
      ~{true="-t" false="" arg_file_newick} \
      ~{true="-a" false="" arg_anno_map} \
      ~{true="-n" false="" arg_name_use} \
      ~{true="-p" false="" arg_defines_number} \
      ~{true="-d" false="" arg_defines_stopping} \
      ~{true="-i" false="" arg_max_numbr} \
      ~{true="-l" false="" arg_grammarlogfiletxt_log}
  >>>
  parameter_meta {
    arg_file_newick: "[ --treeFile ] arg                 File with Newick tree used with phylo  grammars."
    arg_anno_map: "[ --annoMapFile ] arg              Anno map file."
    arg_name_use: "[ --annoName ] arg                 Name of annotation to use."
    arg_defines_number: "[ --pseudoCounts ] arg (=0)        Defines total number of pseudocounts  used for each transition distribution  (For each transition, the number of  pseudocounts is defined as the initital transition probs in the input file  times the given pseudoCounts value)."
    arg_defines_stopping: "[ --minDeltaLogLik ] arg (=0.0001) Defines stopping criteria for the EM  training. The training will stop when  the difference in log likelihood is  below minDeltaLogLik (default is 1e-4)."
    arg_max_numbr: "[ --maxIter ] arg (=100)           Max numbr if iterations of the EM  training (default is 100)."
    arg_grammarlogfiletxt_log: "[ --logFile ] arg (=grammarLogFile.txt) Log file for EM training (default is  ./grammarLogFile.txt)."
    grammar_dot_txt: ""
    emit_models_dot_txt: ""
    alg_do_tama: ""
  }
}