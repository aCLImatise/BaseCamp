version 1.0

task SelectGenepy {
  command <<<
    SelectGene_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}