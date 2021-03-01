version 1.0

task BlastCheckPairpl {
  command <<<
    blast_check_pair_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}