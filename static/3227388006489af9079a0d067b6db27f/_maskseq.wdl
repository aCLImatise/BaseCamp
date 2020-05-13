version 1.0

task _maskseq {
  input {
    Boolean regionsRegions
    Boolean toToLower
  }
  command <<<
    _maskseq \
      ~{true="-regions" false="" regionsRegions} \
      ~{true="-tolower" false="" toToLower}
  >>>
}