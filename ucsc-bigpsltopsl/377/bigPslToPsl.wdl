version 1.0

task BigPslToPsl {
  input {
    Boolean collapseCollapseStrand
    String? bigBigPslBb
    String? outputOutputPsl
  }
  command <<<
    bigPslToPsl \
      ~{bigBigPslBb} \
      ~{true="-collapseStrand" false="" collapseCollapseStrand} \
      ~{outputOutputPsl}
  >>>
}