version 1.0

task SgaOview {
  input {
    Boolean? verbose
    String? id
    String? max_overhang
    String? default_padding
    String? option
  }
  command <<<
    sga oview \
      ~{option} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{if defined(max_overhang) then ("--max-overhang " +  '"' + max_overhang + '"') else ""} \
      ~{if defined(default_padding) then ("--default-padding " +  '"' + default_padding + '"') else ""}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    id: "only show overlaps for read with ID"
    max_overhang: "only show D overhanging bases of the alignments (default: 6)"
    default_padding: "pad the overlap lines with D characters (default: 20)"
    option: ""
  }
}