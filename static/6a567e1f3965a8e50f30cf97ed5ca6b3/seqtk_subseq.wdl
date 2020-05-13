version 1.0

task SeqtkSubseq {
  input {
    Boolean tT
    Boolean eE
    Int lL
  }
  command <<<
    seqtk subseq \
      ~{true="-t" false="" tT} \
      ~{true="-e" false="" eE} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""}
  >>>
}