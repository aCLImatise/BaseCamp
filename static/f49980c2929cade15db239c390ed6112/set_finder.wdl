version 1.0

task SetFinder {
  input {
    String reorderReorder
    Boolean qQ
    String outputOutput
    String? noneNone
    String? reverseReverse
    String? defaultDefault
    String? unweightedUnweightedColoring
    String? weightedWeightedColoring
    String? degreeDegree
    String? randomRandom
  }
  command <<<
    set_finder \
      ~{noneNone} \
      ~{if defined(reorderReorder) then ("--reorder " +  '"' + reorderReorder + '"') else ""} \
      ~{true="-q" false="" qQ} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{reverseReverse} \
      ~{defaultDefault} \
      ~{unweightedUnweightedColoring} \
      ~{weightedWeightedColoring} \
      ~{degreeDegree} \
      ~{randomRandom}
  >>>
}