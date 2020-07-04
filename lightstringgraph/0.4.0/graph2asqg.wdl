version 1.0

task Graph2asqg {
  input {
    String? b
    String? optional_default_basename
    String? l
    Boolean? optional_use_ids
  }
  command <<<
    graph2asqg \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(optional_default_basename) then ("-r " +  '"' + optional_default_basename + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{true="-n" false="" optional_use_ids}
  >>>
  parameter_meta {
    b: "# (required)"
    optional_default_basename: "# (optional, default: <basename>) "
    l: "# (required) "
    optional_use_ids: "# (optional) use numeric IDs instead of FASTA IDs"
  }
}