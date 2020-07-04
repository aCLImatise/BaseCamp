version 1.0

task CanSNPs.pl {
  input {
    Boolean? threshold
    Boolean? symbol
    String perl
  }
  command <<<
    CanSNPs.pl \
      ~{perl} \
      ~{true="--threshold" false="" threshold} \
      ~{true="--symbol" false="" symbol}
  >>>
  parameter_meta {
    threshold: "Fraction of nucleotide in a group for defining Canonical SNPs (default :0.5)"
    symbol: "Not Canonical nt will use symbol in the output (default: \"-\")"
    perl: ""
  }
}