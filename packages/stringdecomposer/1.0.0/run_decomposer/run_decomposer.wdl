version 1.0

task RunDecomposer {
  input {
    Int? threads
    File? out_file
    Int? min_identity
    Int? scoring
    Int? batch_size
    Boolean? fast
    String sequences
    String monomers
  }
  command <<<
    run_decomposer \
      ~{sequences} \
      ~{monomers} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(out_file) then ("--out-file " +  '"' + out_file + '"') else ""} \
      ~{if defined(min_identity) then ("--min-identity " +  '"' + min_identity + '"') else ""} \
      ~{if defined(scoring) then ("--scoring " +  '"' + scoring + '"') else ""} \
      ~{if defined(batch_size) then ("--batch-size " +  '"' + batch_size + '"') else ""} \
      ~{if (fast) then "--fast" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/stringdecomposer:1.0.0--py38hed8969a_0"
  }
  parameter_meta {
    threads: "number of threads (by default 1)"
    out_file: "output tsv-file (by default final_decomposition.tsv)"
    min_identity: "only monomer alignments with percent identity >=\\nMIN_IDENTITY are printed (by default MIN_IDENTITY=0)"
    scoring: "set scoring scheme for SD in the format\\n\\\"insertion,deletion,mismatch,match\\\" (by default\\n\\\"-1,-1,-1,1\\\")"
    batch_size: "set size of the batch in parallelization (by default\\n5000)"
    fast: "doesn't generate second best monomer and homopolymer\\nscores\\n"
    sequences: "fasta-file with long reads or genomic sequences"
    monomers: "fasta-file with monomers"
  }
  output {
    File out_stdout = stdout()
    File out_out_file = "${in_out_file}"
  }
}