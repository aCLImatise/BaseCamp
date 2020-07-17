version 1.0

task SmafaCluster {
  input {
    Boolean? amino_acid
    Boolean? fragment_method
    Boolean? quiet
    Boolean? verbose
    Int? divergence
    Int? km_er_length
    String? flags
    String fast_a
  }
  command <<<
    smafa cluster \
      ~{flags} \
      ~{fast_a} \
      ~{true="--amino-acid" false="" amino_acid} \
      ~{true="--fragment-method" false="" fragment_method} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(divergence) then ("--divergence " +  '"' + divergence + '"') else ""} \
      ~{if defined(km_er_length) then ("--kmer-length " +  '"' + km_er_length + '"') else ""}
  >>>
  parameter_meta {
    amino_acid: "Sequences are amino acid [default: nucleotide]"
    fragment_method: "Use the 'fragment' method for clustering"
    quiet: "Unless there is an error, do not print logging information"
    verbose: "Print extra debug logging information"
    divergence: "Maximum number of mismatches in reported hits [default: 5]"
    km_er_length: "Length of kmer to query with [default 5]"
    flags: ""
    fast_a: ""
  }
}