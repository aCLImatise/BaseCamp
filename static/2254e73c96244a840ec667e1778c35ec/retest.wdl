version 1.0

task Retest {
  input {
    Boolean? debug
    Boolean? ignore
    Boolean? local
    Boolean? min_tax_a
    Boolean? roc
    Boolean? skip
    String? min_score
    Boolean? v
  }
  command <<<
    retest \
      ~{true="--debug" false="" debug} \
      ~{true="--ignore" false="" ignore} \
      ~{true="--local" false="" local} \
      ~{true="--mintaxa" false="" min_tax_a} \
      ~{true="--roc" false="" roc} \
      ~{true="--skip" false="" skip} \
      ~{if defined(min_score) then ("--minscore " +  '"' + min_score + '"') else ""} \
      ~{true="-V" false="" v}
  >>>
  parameter_meta {
    debug: "increase output verbosity and perform additional checks"
    ignore: "continue testing even if errors arise"
    local: "test local directory scripts instead of pip installed"
    min_tax_a: "Perform additional tests for mintaxa dependency"
    roc: "Perform additional tests and get ROC figures"
    skip: "Skip the recentrifuge calls and just load the results to plot ROC figure by mintaxa (results should be available)"
    min_score: "minimum score/confidence of the classification of a read to pass the quality filter; 35 by default"
    v: ""
  }
}