version 1.0

task RepeatScout {
  input {
    Boolean lL
    Boolean matchMatch
    Boolean mismatchMismatch
    Boolean gapGap
    Boolean maxMaxGap
    Boolean maxMaxOccurrences
    Boolean maxMaxRepeats
    Boolean capCapPenalty
    Boolean tandemTandemDist
    Boolean minMinThresh
    Boolean minMinImprovement
    Boolean stopStopAfter
    Boolean goodGoodLength
    Boolean maxMaxEntropy
    Boolean vV
  }
  command <<<
    RepeatScout \
      ~{true="-L" false="" lL} \
      ~{true="-match" false="" matchMatch} \
      ~{true="-mismatch" false="" mismatchMismatch} \
      ~{true="-gap" false="" gapGap} \
      ~{true="-maxgap" false="" maxMaxGap} \
      ~{true="-maxoccurrences" false="" maxMaxOccurrences} \
      ~{true="-maxrepeats" false="" maxMaxRepeats} \
      ~{true="-cappenalty" false="" capCapPenalty} \
      ~{true="-tandemdist" false="" tandemTandemDist} \
      ~{true="-minthresh" false="" minMinThresh} \
      ~{true="-minimprovement" false="" minMinImprovement} \
      ~{true="-stopafter" false="" stopStopAfter} \
      ~{true="-goodlength" false="" goodGoodLength} \
      ~{true="-maxentropy" false="" maxMaxEntropy} \
      ~{true="-v" false="" vV}
  >>>
}