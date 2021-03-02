version 1.0

task RemakeReferencesh {
  command <<<
    remake_reference_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}