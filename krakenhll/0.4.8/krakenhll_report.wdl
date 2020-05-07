version 1.0

task KrakenhllReport {
  input {
    Boolean showShowZeros
    Boolean taxTaxOnCounts
    Boolean taxTaxOnList
  }
  command <<<
    krakenhll-report \
      ~{true="--show-zeros" false="" showShowZeros} \
      ~{true="--taxon-counts" false="" taxTaxOnCounts} \
      ~{true="--taxon-list" false="" taxTaxOnList}
  >>>
}