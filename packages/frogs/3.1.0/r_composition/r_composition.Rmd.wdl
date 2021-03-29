version 1.0

task RCompositionRmd {
  command <<<
    r_composition_Rmd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}