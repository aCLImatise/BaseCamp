version 1.0

task FaAlign {
  input {
    Boolean? dna
    String target_dot_fa
    String query_dot_fa
    String output_do_tax_t
  }
  command <<<
    faAlign \
      ~{target_dot_fa} \
      ~{query_dot_fa} \
      ~{output_do_tax_t} \
      ~{true="-dna" false="" dna}
  >>>
  parameter_meta {
    dna: "- use DNA scoring scheme"
    target_dot_fa: ""
    query_dot_fa: ""
    output_do_tax_t: ""
  }
}