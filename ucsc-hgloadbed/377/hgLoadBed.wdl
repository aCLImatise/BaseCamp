version 1.0

task HgLoadBed {
  input {
    String fillFillInScore
    String minMinScore
    String verboseVerbose
    String dotDotIsNull
    String lineLineLimit
  }
  command <<<
    hgLoadBed \
      ~{if defined(fillFillInScore) then ("-fillInScore " +  '"' + fillFillInScore + '"') else ""} \
      ~{if defined(minMinScore) then ("-minScore " +  '"' + minMinScore + '"') else ""} \
      ~{if defined(verboseVerbose) then ("- verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{if defined(dotDotIsNull) then ("-dotIsNull " +  '"' + dotDotIsNull + '"') else ""} \
      ~{if defined(lineLineLimit) then ("-lineLimit " +  '"' + lineLineLimit + '"') else ""}
  >>>
}