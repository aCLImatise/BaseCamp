version 1.0

task Isescanpy {
  input {
    File? seq_file
    Boolean? remove_short_is
    Boolean? no_frag_genes_can
    Int? n_thread
  }
  command <<<
    isescan_py \
      ~{if defined(seq_file) then ("--seqfile " +  '"' + seq_file + '"') else ""} \
      ~{if (remove_short_is) then "--removeShortIS" else ""} \
      ~{if (no_frag_genes_can) then "--no-FragGeneScan" else ""} \
      ~{if defined(n_thread) then ("--nthread " +  '"' + n_thread + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/isescan:1.7.2.2.2--h516909a_0"
  }
  parameter_meta {
    seq_file: "[--nthread NTHREAD]"
    remove_short_is: "Remove incomplete (partial) IS elements which include IS\\nelement with length < 400 or single copy IS element\\nwithout perfect TIR."
    no_frag_genes_can: "Use the annotated protein sequences in NCBI GenBank file\\n(.gbk which must be in the same folder with genome\\nsequence file), instead of the protein sequences\\npredicted/translated by FragGeneScan. (Experimental\\nfeature!)"
    n_thread: "Number of CPU cores used for FragGeneScan and hmmer, 1 by\\ndefault.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}