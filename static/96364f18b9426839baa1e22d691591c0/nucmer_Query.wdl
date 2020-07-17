version 1.0

task NucmerQuery {
  input {
    String nuc_mer
    String reference
    String query
  }
  command <<<
    nucmer Query \
      ~{nuc_mer} \
      ~{reference} \
      ~{query}
  >>>
  parameter_meta {
    nuc_mer: ""
    reference: ""
    query: ""
  }
}