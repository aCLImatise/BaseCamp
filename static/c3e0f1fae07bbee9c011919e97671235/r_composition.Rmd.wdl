version 1.0

task RCompositionRmd {
  command <<<
    r_composition_Rmd
  >>>
  output {
    File out_stdout = stdout()
  }
}