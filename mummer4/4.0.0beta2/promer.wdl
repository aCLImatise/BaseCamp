version 1.0

task Promer {
  input {
    Boolean? matrix_set_number
    String reference
    String query
  }
  command <<<
    promer \
      ~{reference} \
      ~{query} \
      ~{true="-x" false="" matrix_set_number}
  >>>
  parameter_meta {
    matrix_set_number: "|matrix       Set the alignment matrix number to 1 [BLOSUM 45], 2 [BLOSUM 62] or 3 [BLOSUM 80] (default 2)"
    reference: "Set the input reference multi-FASTA DNA file"
    query: "Set the input query multi-FASTA DNA file"
  }
}