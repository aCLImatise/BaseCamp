version 1.0

task OmetaMDSanalysisR {
  input {
    String permute
  }
  command <<<
    o_metaMDS_analysis_R \
      ~{permute}
  >>>
  parameter_meta {
    permute: "Error in file(file, \\\"rt\\\") : cannot open the connection"
  }
  output {
    File out_stdout = stdout()
  }
}