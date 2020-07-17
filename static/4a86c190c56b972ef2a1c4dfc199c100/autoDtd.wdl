version 1.0

task AutoDtd {
  input {
    String? tree
    String? a_tree
    String in_dot_xml
    String out_dot_dtd
    String out_dot_stats
  }
  command <<<
    autoDtd \
      ~{in_dot_xml} \
      ~{out_dot_dtd} \
      ~{out_dot_stats} \
      ~{if defined(tree) then ("-tree " +  '"' + tree + '"') else ""} \
      ~{if defined(a_tree) then ("-atree " +  '"' + a_tree + '"') else ""}
  >>>
  parameter_meta {
    tree: "- Output tag tree."
    a_tree: "- Output attributed tag tree."
    in_dot_xml: ""
    out_dot_dtd: ""
    out_dot_stats: ""
  }
}