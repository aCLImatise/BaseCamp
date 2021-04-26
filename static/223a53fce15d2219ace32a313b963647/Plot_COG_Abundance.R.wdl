version 1.0

task PlotCOGAbundanceR {
  input {
    String lowess
  }
  command <<<
    Plot_COG_Abundance_R \
      ~{lowess}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pgcgap:1.0.28--py37pl5262hdfd78af_0"
  }
  parameter_meta {
    lowess: "Error in file(file, \\\"rt\\\") : cannot open the connection"
  }
  output {
    File out_stdout = stdout()
  }
}