version 1.0

task SmafaMakedb {
  input {
    Boolean? amino_acid
    Boolean? quiet
    Boolean? translate
    Boolean? verbose
    String? flags
    String db_fast_a
    String db
  }
  command <<<
    smafa makedb \
      ~{flags} \
      ~{db_fast_a} \
      ~{db} \
      ~{true="--amino-acid" false="" amino_acid} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--translate" false="" translate} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    amino_acid: "Sequences are amino acid [default: nucleotide]"
    quiet: "Unless there is an error, do not print logging information"
    translate: "Translate input before generating DB"
    verbose: "Print extra debug logging information"
    flags: ""
    db_fast_a: ""
    db: ""
  }
}