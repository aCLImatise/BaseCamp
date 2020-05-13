version 1.0

task Mccortex127Correct {
  input {
    String seqSeq
    String seqSeq
  }
  command <<<
    mccortex127 correct \
      ~{if defined(seqSeq) then ("--seq " +  '"' + seqSeq + '"') else ""} \
      ~{if defined(seqSeq) then ("--seq " +  '"' + seqSeq + '"') else ""}
  >>>
}