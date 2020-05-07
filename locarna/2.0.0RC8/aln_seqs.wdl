version 1.0

task AlnSeqs.pl {
  input {
    String noNoHash
    String? alnAlnSeqs
    File? filesFiles
  }
  command <<<
    aln-seqs.pl \
      ~{alnAlnSeqs} \
      ~{if defined(noNoHash) then ("-no-hash " +  '"' + noNoHash + '"') else ""} \
      ~{filesFiles}
  >>>
}