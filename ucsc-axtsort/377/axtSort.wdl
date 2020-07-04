version 1.0

task AxtSort {
  input {
    Boolean? query
    Boolean? by_score
    String in_do_tax_t
    String out_do_tax_t
  }
  command <<<
    axtSort \
      ~{in_do_tax_t} \
      ~{out_do_tax_t} \
      ~{true="-query" false="" query} \
      ~{true="-byScore" false="" by_score}
  >>>
  parameter_meta {
    query: "- Sort by query position, not target"
    by_score: "- Sort by score"
    in_do_tax_t: ""
    out_do_tax_t: ""
  }
}