version 1.0

task MergeSuperReadsUniquelypl {
  command <<<
    mergeSuperReadsUniquely_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}