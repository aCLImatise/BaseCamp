version 1.0

task Cdstrainerpl {
  command <<<
    cds_trainer_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}