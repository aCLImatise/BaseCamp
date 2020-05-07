version 1.0

task Emma {
  input {
    Boolean onlyOnlyDEnd
    Boolean gapGapDist
  }
  command <<<
    emma \
      ~{true="-onlydend" false="" onlyOnlyDEnd} \
      ~{true="-gapdist" false="" gapGapDist}
  >>>
}