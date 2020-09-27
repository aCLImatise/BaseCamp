version 1.0

task TangoBuildTaxonnodes {
  input {
    String? p
    String? d
    String tango
    String build
    String fast_a_file
    String taxon_map
    String tax_on_nodes
  }
  command <<<
    tango build taxonnodes \
      ~{tango} \
      ~{build} \
      ~{fast_a_file} \
      ~{taxon_map} \
      ~{tax_on_nodes} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""}
  >>>
  parameter_meta {
    p: ""
    d: ""
    tango: ""
    build: ""
    fast_a_file: ""
    taxon_map: ""
    tax_on_nodes: ""
  }
  output {
    File out_stdout = stdout()
  }
}