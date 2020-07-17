version 1.0

task RnaclustScores2Dist.pl {
  input {
    Boolean? man
    Boolean? verbose
    Boolean? quiet
    Boolean? quantile
  }
  command <<<
    rnaclustScores2Dist.pl \
      ~{true="--man" false="" man} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--quantile" false="" quantile}
  >>>
  parameter_meta {
    man: "full documentation"
    verbose: "be verbose"
    quiet: "be quiet"
    quantile: "the quantile"
  }
}