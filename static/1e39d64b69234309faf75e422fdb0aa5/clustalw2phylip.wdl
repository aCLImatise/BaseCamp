version 1.0

task Clustalw2phylip {
  input {
    Int clustalw_two_phy_i_lip
    File clustalw_file
  }
  command <<<
    clustalw2phylip \
      ~{clustalw_two_phy_i_lip} \
      ~{clustalw_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    clustalw_two_phy_i_lip: ""
    clustalw_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}