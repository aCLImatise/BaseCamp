version 1.0

task Abpoa {
  input {
    Int alnAlnMode
    Boolean matchMatch
    Int mismatchMismatch
    Int gapGapOpen
    Boolean gapGapExt
    Boolean extraExtraB
    Boolean extraExtraF
    Boolean inInList
    Boolean outputOutput
    Boolean resultResult
    Boolean outOutPog
    Int consConsAlg
    Boolean diploidDiploid
    Float minMinFreq
  }
  command <<<
    abpoa \
      ~{if defined(alnAlnMode) then ("--aln-mode " +  '"' + alnAlnMode + '"') else ""} \
      ~{true="--match" false="" matchMatch} \
      ~{if defined(mismatchMismatch) then ("--mismatch " +  '"' + mismatchMismatch + '"') else ""} \
      ~{if defined(gapGapOpen) then ("--gap-open " +  '"' + gapGapOpen + '"') else ""} \
      ~{true="--gap-ext" false="" gapGapExt} \
      ~{true="--extra-b" false="" extraExtraB} \
      ~{true="--extra-f" false="" extraExtraF} \
      ~{true="--in-list" false="" inInList} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--result" false="" resultResult} \
      ~{true="--out-pog" false="" outOutPog} \
      ~{if defined(consConsAlg) then ("--cons-alg " +  '"' + consConsAlg + '"') else ""} \
      ~{true="--diploid" false="" diploidDiploid} \
      ~{if defined(minMinFreq) then ("--min-freq " +  '"' + minMinFreq + '"') else ""}
  >>>
}