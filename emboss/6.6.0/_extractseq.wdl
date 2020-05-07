version 1.0

task _extractseq {
  input {
    Boolean regionsRegions
  }
  command <<<
    _extractseq \
      ~{true="-regions" false="" regionsRegions}
  >>>
}