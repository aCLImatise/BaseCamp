version 1.0

task Alnseqspl {
  input {
    String? man
    Int? sort
    File? null
    String? no_hash
  }
  command <<<
    aln_seqs_pl \
      ~{if defined(man) then ("--man " +  '"' + man + '"') else ""} \
      ~{if defined(sort) then ("--sort " +  '"' + sort + '"') else ""} \
      ~{if defined(null) then ("--null " +  '"' + null + '"') else ""} \
      ~{if defined(no_hash) then ("-no-hash " +  '"' + no_hash + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    man: "documentation"
    sort: "by number of sequences"
    null: "file name from sequence names by \\0"
    no_hash: "names with prefix '#'"
  }
  output {
    File out_stdout = stdout()
  }
}