version 1.0

task AdminGeneRegionBedDumperpl {
  command <<<
    Admin_GeneRegionBedDumper_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}