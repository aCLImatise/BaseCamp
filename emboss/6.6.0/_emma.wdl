version 1.0

task _emma {
  input {
    Boolean onlyOnlyDEnd
    Boolean gapGapDist
  }
  command <<<
    _emma \
      ~{true="-onlydend" false="" onlyOnlyDEnd} \
      ~{true="-gapdist" false="" gapGapDist}
  >>>
}