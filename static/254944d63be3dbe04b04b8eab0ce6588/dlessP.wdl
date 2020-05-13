version 1.0

task DlessP {
  input {
    String refseqRefseq
    String refRefIdx
    File timingTiming
    String htmlHtml
  }
  command <<<
    dlessP \
      ~{if defined(refseqRefseq) then ("--refseq " +  '"' + refseqRefseq + '"') else ""} \
      ~{if defined(refRefIdx) then ("--refidx " +  '"' + refRefIdx + '"') else ""} \
      ~{if defined(timingTiming) then ("--timing " +  '"' + timingTiming + '"') else ""} \
      ~{if defined(htmlHtml) then ("--html " +  '"' + htmlHtml + '"') else ""}
  >>>
}