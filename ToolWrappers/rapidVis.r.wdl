version 1.0

task RapidVisr {
  input {
    String viridis_pal
    String lowess
  }
  command <<<
    rapidVis_r \
      ~{viridis_pal} \
      ~{lowess}
  >>>
  parameter_meta {
    viridis_pal: "Attaching package: 'gplots'"
    lowess: "Error in if (plotMethod == \\\"stats\\\") { : "
  }
  output {
    File out_stdout = stdout()
  }
}