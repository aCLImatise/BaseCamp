version 1.0

task Mccortex95Correct {
  input {
    String seqSeq
    String seqSeq
  }
  command <<<
    mccortex95 correct \
      ~{if defined(seqSeq) then ("--seq " +  '"' + seqSeq + '"') else ""} \
      ~{if defined(seqSeq) then ("--seq " +  '"' + seqSeq + '"') else ""}
  >>>
}