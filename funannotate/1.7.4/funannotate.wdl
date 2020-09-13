version 1.0

task Funannotate {
  command <<<
    funannotate
  >>>
  output {
    File out_stdout = stdout()
  }
}