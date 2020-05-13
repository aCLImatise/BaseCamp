version 1.0

task _extractalign {
  input {
    Boolean regionsRegions
  }
  command <<<
    _extractalign \
      ~{true="-regions" false="" regionsRegions}
  >>>
}