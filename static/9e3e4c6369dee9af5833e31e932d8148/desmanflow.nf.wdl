version 1.0

task Desmanflownf {
  command <<<
    desmanflow_nf
  >>>
  output {
    File out_stdout = stdout()
  }
}