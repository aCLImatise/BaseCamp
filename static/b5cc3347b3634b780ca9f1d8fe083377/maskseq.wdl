version 1.0

task Maskseq {
  input {
    Boolean regionsRegions
    Boolean toToLower
  }
  command <<<
    maskseq \
      ~{true="-regions" false="" regionsRegions} \
      ~{true="-tolower" false="" toToLower}
  >>>
}