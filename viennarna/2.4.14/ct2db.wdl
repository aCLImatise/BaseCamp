version 1.0

task Ct2db {
  input {
    Boolean? remove_pk
    Boolean? convert_to_rna
    Boolean? verbose
  }
  command <<<
    ct2db \
      ~{true="--removePK" false="" remove_pk} \
      ~{true="--convertToRNA" false="" convert_to_rna} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    remove_pk: "Remove pseudoknots from structure (default=off)"
    convert_to_rna: "Substitute all nucleotides with their RNA alphabet counter parts, i.e. convert to characters A, C, G, U or N for unknown bases. (default=off)"
    verbose: "Be verbose (default=off)"
  }
}