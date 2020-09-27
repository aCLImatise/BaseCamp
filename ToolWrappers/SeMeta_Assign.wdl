version 1.0

task SeMetaAssign {
  command <<<
    SeMeta_Assign
  >>>
  output {
    File out_stdout = stdout()
  }
}