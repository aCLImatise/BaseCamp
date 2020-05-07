version 1.0

task SeqhaxStats {
  input {
    String tT
  }
  command <<<
    seqhax stats \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}