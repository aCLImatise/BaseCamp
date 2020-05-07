version 1.0

task Extractalign {
  input {
    Boolean regionsRegions
  }
  command <<<
    extractalign \
      ~{true="-regions" false="" regionsRegions}
  >>>
}