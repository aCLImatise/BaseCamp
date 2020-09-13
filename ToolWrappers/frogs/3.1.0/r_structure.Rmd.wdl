version 1.0

task RStructureRmd {
  command <<<
    r_structure_Rmd
  >>>
  output {
    File out_stdout = stdout()
  }
}