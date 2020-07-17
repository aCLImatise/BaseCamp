version 1.0

task BigWigAverageOverBed {
  input {
    Boolean? minmax
    String in_dot_bw
    String in_dot_bed
    String out_dot_tab
  }
  command <<<
    bigWigAverageOverBed \
      ~{in_dot_bw} \
      ~{in_dot_bed} \
      ~{out_dot_tab} \
      ~{true="-minMax" false="" minmax}
  >>>
  parameter_meta {
    minmax: "- include two additional columns containing the min and max observed in the area."
    in_dot_bw: ""
    in_dot_bed: ""
    out_dot_tab: ""
  }
}