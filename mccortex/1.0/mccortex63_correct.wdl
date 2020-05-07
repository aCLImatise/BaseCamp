version 1.0

task Mccortex63Correct {
  input {
    String seqSeq
    String seqSeq
  }
  command <<<
    mccortex63 correct \
      ~{if defined(seqSeq) then ("--seq " +  '"' + seqSeq + '"') else ""} \
      ~{if defined(seqSeq) then ("--seq " +  '"' + seqSeq + '"') else ""}
  >>>
}