version 1.0

task Collatepl {
  command <<<
    Collate_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}