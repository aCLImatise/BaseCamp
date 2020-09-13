version 1.0

task CruxCascadesearch {
  command <<<
    crux cascade_search
  >>>
  output {
    File out_stdout = stdout()
  }
}