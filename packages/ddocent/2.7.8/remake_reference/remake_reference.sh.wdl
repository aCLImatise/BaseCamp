version 1.0

task RemakeReferencesh {
  command <<<
    remake_reference_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}