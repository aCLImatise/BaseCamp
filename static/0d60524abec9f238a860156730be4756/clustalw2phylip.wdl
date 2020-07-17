version 1.0

task Clustalw2phylip {
  input {
    String clustalw_two_phy_i_lip
    String clustalw_file
  }
  command <<<
    clustalw2phylip \
      ~{clustalw_two_phy_i_lip} \
      ~{clustalw_file}
  >>>
  parameter_meta {
    clustalw_two_phy_i_lip: ""
    clustalw_file: ""
  }
}