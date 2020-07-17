version 1.0

task TangoBuildTaxonmap {
  input {
    String? d
    String? p
    String tango
    String build
    String fast_a_file
    String taxon_map
    String tax_on_nodes
  }
  command <<<
    tango build taxonmap \
      ~{tango} \
      ~{build} \
      ~{fast_a_file} \
      ~{taxon_map} \
      ~{tax_on_nodes} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""}
  >>>
  parameter_meta {
    d: ""
    p: ""
    tango: ""
    build: ""
    fast_a_file: ""
    taxon_map: ""
    tax_on_nodes: ""
  }
}