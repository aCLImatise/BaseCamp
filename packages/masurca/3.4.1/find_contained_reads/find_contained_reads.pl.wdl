version 1.0

task FindContainedReadspl {
  command <<<
    find_contained_reads_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}