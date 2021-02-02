version 1.0

task CorrectedInsertsizepl {
  command <<<
    corrected_insertsize_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}