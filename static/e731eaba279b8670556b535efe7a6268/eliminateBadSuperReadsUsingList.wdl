version 1.0

task EliminateBadSuperReadsUsingList {
  command <<<
    eliminateBadSuperReadsUsingList
  >>>
  output {
    File out_stdout = stdout()
  }
}