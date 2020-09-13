version 1.0

task CruxTideindex {
  command <<<
    crux tide_index
  >>>
  output {
    File out_stdout = stdout()
  }
}