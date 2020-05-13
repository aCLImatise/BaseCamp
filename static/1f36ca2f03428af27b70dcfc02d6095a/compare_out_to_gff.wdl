version 1.0

task CompareOutToGff.prl {
  input {
    String catCat
    Boolean catCat
    Boolean gffGff
    Boolean fF
    Boolean thresholdThreshold
    Boolean overOver
    Boolean instancesInstances
  }
  command <<<
    compare-out-to-gff.prl \
      ~{if defined(catCat) then ("--cat " +  '"' + catCat + '"') else ""} \
      ~{true="--cat" false="" catCat} \
      ~{true="--gff" false="" gffGff} \
      ~{true="--f" false="" fF} \
      ~{true="--threshold" false="" thresholdThreshold} \
      ~{true="--over" false="" overOver} \
      ~{true="--instances" false="" instancesInstances}
  >>>
}