version 1.0

task AlnSeqs.pl {
  input {
    String? man
    String? sort
    String? null
    String? no_hash
    File files
  }
  command <<<
    aln-seqs.pl \
      ~{files} \
      ~{if defined(man) then ("--man " +  '"' + man + '"') else ""} \
      ~{if defined(sort) then ("--sort " +  '"' + sort + '"') else ""} \
      ~{if defined(null) then ("--null " +  '"' + null + '"') else ""} \
      ~{if defined(no_hash) then ("-no-hash " +  '"' + no_hash + '"') else ""}
  >>>
  parameter_meta {
    man: "documentation"
    sort: "by number of sequences"
    null: "file name from sequence names by \0"
    no_hash: "names with prefix '#'"
    files: ""
  }
}