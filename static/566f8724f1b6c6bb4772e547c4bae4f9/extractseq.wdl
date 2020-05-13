version 1.0

task Extractseq {
  input {
    Boolean regionsRegions
  }
  command <<<
    extractseq \
      ~{true="-regions" false="" regionsRegions}
  >>>
}