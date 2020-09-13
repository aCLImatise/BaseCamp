version 1.0

task JuncDbFusion {
  command <<<
    junc_db_fusion
  >>>
  output {
    File out_stdout = stdout()
  }
}