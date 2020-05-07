version 1.0

task SeqtkSubseq {
  input {
    Boolean tT
    Int lL
  }
  command <<<
    seqtk subseq \
      ~{true="-t" false="" tT} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""}
  >>>
}