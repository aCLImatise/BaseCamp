version 1.0

task EliminateBadSuperReadsUsingList {
  command <<<
    eliminateBadSuperReadsUsingList
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}