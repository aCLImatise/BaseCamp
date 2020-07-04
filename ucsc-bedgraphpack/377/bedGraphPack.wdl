version 1.0

task BedGraphPack {
  input {
    String in_dot_bed_graph
    String out_dot_bed_graph
  }
  command <<<
    bedGraphPack \
      ~{in_dot_bed_graph} \
      ~{out_dot_bed_graph}
  >>>
  parameter_meta {
    in_dot_bed_graph: ""
    out_dot_bed_graph: ""
  }
}