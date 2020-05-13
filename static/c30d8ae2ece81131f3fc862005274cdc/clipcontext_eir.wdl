version 1.0

task ClipcontextEir {
  input {
    String trTr
    String gtfGtf
    String exonExonOut
    String intronIntronOut
  }
  command <<<
    clipcontext eir \
      ~{if defined(trTr) then ("--tr " +  '"' + trTr + '"') else ""} \
      ~{if defined(gtfGtf) then ("--gtf " +  '"' + gtfGtf + '"') else ""} \
      ~{if defined(exonExonOut) then ("--exon-out " +  '"' + exonExonOut + '"') else ""} \
      ~{if defined(intronIntronOut) then ("--intron-out " +  '"' + intronIntronOut + '"') else ""}
  >>>
}