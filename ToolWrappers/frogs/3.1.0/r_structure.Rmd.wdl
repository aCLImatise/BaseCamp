version 1.0

task RStructureRmd {
  command <<<
    r_structure_Rmd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}