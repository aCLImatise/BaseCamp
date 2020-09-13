version 1.0

task Retest {
  input {
    Boolean? debug
    Boolean? local
    Int? min_score
    Boolean? min_tax_a
    Boolean? roc
    Boolean? skip
    Boolean? strain
    Boolean? v
    Boolean? i
    String checks
  }
  command <<<
    retest \
      ~{checks} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (local) then "--local" else ""} \
      ~{if defined(min_score) then ("--minscore " +  '"' + min_score + '"') else ""} \
      ~{if (min_tax_a) then "--mintaxa" else ""} \
      ~{if (roc) then "--roc" else ""} \
      ~{if (skip) then "--skip" else ""} \
      ~{if (strain) then "--strain" else ""} \
      ~{if (v) then "-V" else ""} \
      ~{if (i) then "-i" else ""}
  >>>
  parameter_meta {
    debug: "increase output verbosity and perform additional"
    local: "test local directory scripts instead of pip installed"
    min_score: "minimum score/confidence of the classification of a\\nread to pass the quality filter; 35 by default"
    min_tax_a: "perform additional tests for mintaxa dependency"
    roc: "perform additional tests and get ROC figures"
    skip: "skip the recentrifuge calls and just load the results\\nto plot ROC figure by mintaxa (results should be\\navailable)"
    strain: "set this same flag in rcf [experimental feature]"
    v: ""
    i: ""
    checks: "-i, --ignore          continue testing even if errors arise"
  }
  output {
    File out_stdout = stdout()
  }
}