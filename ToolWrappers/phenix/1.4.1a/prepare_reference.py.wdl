version 1.0

task PrepareReferencepy {
  command <<<
    prepare_reference_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}