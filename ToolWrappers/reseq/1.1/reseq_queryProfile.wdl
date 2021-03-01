version 1.0

task ReseqQueryProfile {
  input {
    Boolean? arg_number_threads
    Int? verbosity
    Boolean? maxlen_deletion
    Boolean? arg_reference_sequences
    File? refseq_bias
    Boolean? arg_reseq_statistics
    String stdout
  }
  command <<<
    reseq queryProfile \
      ~{stdout} \
      ~{if (arg_number_threads) then "-j" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if (maxlen_deletion) then "--maxLenDeletion" else ""} \
      ~{if (arg_reference_sequences) then "-r" else ""} \
      ~{if defined(refseq_bias) then ("--refSeqBias " +  '"' + refseq_bias + '"') else ""} \
      ~{if (arg_reseq_statistics) then "-s" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/reseq:1.1--py38h56fca86_0"
  }
  parameter_meta {
    arg_number_threads: "[ --threads ] arg (=0) Number of threads used (0=auto)"
    verbosity: "(=4)      Sets the level of verbosity (4=everything,\\n0=nothing)"
    maxlen_deletion: "Output lengths of longest detected deletion to"
    arg_reference_sequences: "[ --ref ] arg          Reference sequences in fasta format (gz and bz2\\nsupported)"
    refseq_bias: "Output reference sequence bias to file (tsv format;\\n- for stdout)"
    arg_reseq_statistics: "[ --stats ] arg        Reseq statistics file to extract reference sequence\\nbias\\n"
    stdout: "--maxReadLength           Output lengths of longest detected read to stdout"
  }
  output {
    File out_stdout = stdout()
    File out_refseq_bias = "${in_refseq_bias}"
  }
}