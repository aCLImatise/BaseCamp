version 1.0

task Barrnap {
  input {
    Boolean citationCitation
    Boolean kingdomKingdom
    Boolean quietQuiet
    Boolean threadsThreads
    Boolean lenLenCutOff
    Boolean rejectReject
    Boolean evalueEvalue
    Boolean inInCseq
    Boolean outOutSeq
  }
  command <<<
    barrnap \
      ~{true="--citation" false="" citationCitation} \
      ~{true="--kingdom" false="" kingdomKingdom} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--lencutoff" false="" lenLenCutOff} \
      ~{true="--reject" false="" rejectReject} \
      ~{true="--evalue" false="" evalueEvalue} \
      ~{true="--incseq" false="" inInCseq} \
      ~{true="--outseq" false="" outOutSeq}
  >>>
}