version 1.0

task SeMetaAssign {
  command <<<
    SeMeta_Assign
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}