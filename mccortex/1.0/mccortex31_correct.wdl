version 1.0

task Mccortex31Correct {
  input {
    String seqSeq
    String seqSeq
  }
  command <<<
    mccortex31 correct \
      ~{if defined(seqSeq) then ("--seq " +  '"' + seqSeq + '"') else ""} \
      ~{if defined(seqSeq) then ("--seq " +  '"' + seqSeq + '"') else ""}
  >>>
}