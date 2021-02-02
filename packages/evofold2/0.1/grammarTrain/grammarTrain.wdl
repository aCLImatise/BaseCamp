version 1.0

task GrammarTrain {
  input {
    Boolean? arg_file_newick
    Boolean? arg_name_annotation
    Boolean? arg_defines_total
    Boolean? arg_defines_stopping
    Boolean? arg_max_numbr
    Boolean? arg_grammarlogfiletxtlog_file
    String grammars_dot
  }
  command <<<
    grammarTrain \
      ~{grammars_dot} \
      ~{if (arg_file_newick) then "-t" else ""} \
      ~{if (arg_name_annotation) then "-n" else ""} \
      ~{if (arg_defines_total) then "-p" else ""} \
      ~{if (arg_defines_stopping) then "-d" else ""} \
      ~{if (arg_max_numbr) then "-i" else ""} \
      ~{if (arg_grammarlogfiletxtlog_file) then "-l" else ""}
  >>>
  parameter_meta {
    arg_file_newick: "[ --treeFile ] arg                 File with Newick tree used with phylo"
    arg_name_annotation: "[ --annoName ] arg                 Name of annotation to use."
    arg_defines_total: "[ --pseudoCounts ] arg (=0)        Defines total number of pseudocounts\\nused for each transition distribution\\n(For each transition, the number of\\npseudocounts is defined as the initital\\ntransition probs in the input file\\ntimes the given pseudoCounts value)."
    arg_defines_stopping: "[ --minDeltaLogLik ] arg (=0.0001) Defines stopping criteria for the EM\\ntraining. The training will stop when\\nthe difference in log likelihood is\\nbelow minDeltaLogLik (default is 1e-4)."
    arg_max_numbr: "[ --maxIter ] arg (=100)           Max numbr if iterations of the EM\\ntraining (default is 100)."
    arg_grammarlogfiletxtlog_file: "[ --logFile ] arg (=grammarLogFile.txt)\\nLog file for EM training (default is\\n./grammarLogFile.txt)."
    grammars_dot: "-a [ --annoMapFile ] arg              Anno map file."
  }
  output {
    File out_stdout = stdout()
  }
}