version 1.0

task Isescanpy {
  input {
    Boolean? remove_short_is
    Boolean? no_frag_genes_can
    Int? n_thread
    String seq_file
    Int path_two_proteome
    Int path_two_hmm
  }
  command <<<
    isescan_py \
      ~{seq_file} \
      ~{path_two_proteome} \
      ~{path_two_hmm} \
      ~{if (remove_short_is) then "--removeShortIS" else ""} \
      ~{if (no_frag_genes_can) then "--no-FragGeneScan" else ""} \
      ~{if defined(n_thread) then ("--nthread " +  '"' + n_thread + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    remove_short_is: "remove incomplete (partial) IS elements which include IS\\nelement with length < 400 or single copy IS element\\nwithout perfect TIR."
    no_frag_genes_can: "use the annotated protein sequences in NCBI GenBank file\\n(.gbk which must be in the same folder with genome\\nsequence file), instead of the protein sequences\\npredicted/translated by FragGeneScan. (Experimental\\nfeature!)"
    n_thread: "number of CPU cores used for FragGeneScan and hmmer. By\\ndefault one will be used.\\n"
    seq_file: "sequence file in fasta format"
    path_two_proteome: "directory where proteome (each line corresponds to a\\nprotein sequence database translated from a genome) files\\nwill be placed"
    path_two_hmm: "directory where the results of hmmsearch will be placed"
  }
  output {
    File out_stdout = stdout()
  }
}