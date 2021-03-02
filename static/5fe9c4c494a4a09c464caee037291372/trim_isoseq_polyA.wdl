version 1.0

task TrimIsoseqPolyA {
  input {
    Boolean? arg_input_fasta
    Boolean? arg_hmm_model
    Boolean? arg_fasta_file_polya
    Boolean? arg_fasta_file_nonpolya
    File? arg_new_trained
    Boolean? color_sequences_outputinstead
    Boolean? arg_number_use
    Boolean? input_generic_fasta
  }
  command <<<
    trim_isoseq_polyA \
      ~{if (arg_input_fasta) then "-i" else ""} \
      ~{if (arg_hmm_model) then "-m" else ""} \
      ~{if (arg_fasta_file_polya) then "-a" else ""} \
      ~{if (arg_fasta_file_nonpolya) then "-b" else ""} \
      ~{if (arg_new_trained) then "-n" else ""} \
      ~{if (color_sequences_outputinstead) then "-c" else ""} \
      ~{if (arg_number_use) then "-t" else ""} \
      ~{if (input_generic_fasta) then "-G" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/trim_isoseq_polya:0.0.3--h7c8eefc_0"
  }
  parameter_meta {
    arg_input_fasta: "[ --input ] arg              The input fasta file with polyA, can be\\ncompressed by gzip or bzip2"
    arg_hmm_model: "[ --model ] arg              HMM model file to use; if not specified, will\\nuse default values"
    arg_fasta_file_polya: "[ --polyA_training ] arg     Fasta file with polyA sequences for training\\nwith maximum-likelihood estimation"
    arg_fasta_file_nonpolya: "[ --non_polyA_training ] arg Fasta file with non-polyA sequences for\\ntraining with maximum-likelihood estimation"
    arg_new_trained: "[ --new_model ] arg          New trained model file to output"
    color_sequences_outputinstead: "[ --color ]                  To color polyA sequences in the output\\ninstead of trimming away them"
    arg_number_use: "[ --thread ] arg (=8)        Number of threads to use"
    input_generic_fasta: "[ --generic ]                Input is generic fasta format; By default,\\nthis script adjusts the coordinate in the\\nheader section of output fasta format for\\nIso-seq input. This option switches off this\\nbehavior.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_arg_new_trained = "${in_arg_new_trained}"
  }
}