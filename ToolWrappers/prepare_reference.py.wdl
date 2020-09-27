version 1.0

task PrepareReferencepy {
  command <<<
    prepare_reference_py
  >>>
  output {
    File out_stdout = stdout()
  }
}