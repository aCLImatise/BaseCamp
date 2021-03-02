version 1.0

task Cdstrainerpl {
  command <<<
    cds_trainer_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}