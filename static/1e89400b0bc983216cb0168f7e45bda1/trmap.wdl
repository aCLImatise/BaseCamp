version 1.0

task Trmap {
  input {
    Boolean? s
    String? o
    Boolean? strict_match
    String ref_gff
    String query_gff
  }
  command <<<
    trmap \
      ~{ref_gff} \
      ~{query_gff} \
      ~{true="-S" false="" s} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{true="--strict-match" false="" strict_match}
  >>>
  parameter_meta {
    s: ""
    o: ""
    strict_match: ""
    ref_gff: ""
    query_gff: ""
  }
}