version 1.0

task Isescan.py {
  input {
    Boolean? remove_short_is
    Boolean? no_frag_genes_can
    String? n_thread
    String seq_file
    File path_two_proteome
    File path_two_hmm
  }
  command <<<
    isescan.py \
      ~{seq_file} \
      ~{path_two_proteome} \
      ~{path_two_hmm} \
      ~{true="--removeShortIS" false="" remove_short_is} \
      ~{true="--no-FragGeneScan" false="" no_frag_genes_can} \
      ~{if defined(n_thread) then ("--nthread " +  '"' + n_thread + '"') else ""}
  >>>
  parameter_meta {
    remove_short_is: "remove incomplete (partial) IS elements which include IS element with length < 400 or single copy IS element without perfect TIR."
    no_frag_genes_can: "use the annotated protein sequences in NCBI GenBank file (.gbk which must be in the same folder with genome sequence file), instead of the protein sequences predicted/translated by FragGeneScan. (Experimental feature!)"
    n_thread: "number of CPU cores used for FragGeneScan and hmmer. By default one will be used."
    seq_file: "sequence file in fasta format"
    path_two_proteome: "directory where proteome (each line corresponds to a protein sequence database translated from a genome) files will be placed"
    path_two_hmm: "directory where the results of hmmsearch will be placed"
  }
}