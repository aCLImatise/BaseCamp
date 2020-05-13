version 1.0

task MBICseq {
  input {
    String iI
    Float lL
    Boolean rmRm
  }
  command <<<
    MBICseq \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="--rm" false="" rmRm}
  >>>
}