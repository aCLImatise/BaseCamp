version 1.0

task JuncDbFusion {
  command <<<
    junc_db_fusion
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}