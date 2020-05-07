version 1.0

task KrakenuniqReport {
  input {
    Boolean showShowZeros
    Boolean taxTaxOnCounts
    Boolean taxTaxOnList
  }
  command <<<
    krakenuniq-report \
      ~{true="--show-zeros" false="" showShowZeros} \
      ~{true="--taxon-counts" false="" taxTaxOnCounts} \
      ~{true="--taxon-list" false="" taxTaxOnList}
  >>>
}