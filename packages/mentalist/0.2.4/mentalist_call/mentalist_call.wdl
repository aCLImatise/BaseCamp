version 1.0

task MentalistCall {
  input {
    File? output_file_mlst
    String? db
    Int? mutation_threshold
    Int? kt
    Boolean? output_votes
    File? sample_input_file
    Boolean? fastq_sample_forwardreads
    Boolean? fastq_input_reverse
  }
  command <<<
    mentalist call \
      ~{if defined(output_file_mlst) then ("-o " +  '"' + output_file_mlst + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(mutation_threshold) then ("--mutation_threshold " +  '"' + mutation_threshold + '"') else ""} \
      ~{if defined(kt) then ("--kt " +  '"' + kt + '"') else ""} \
      ~{if (output_votes) then "--output_votes" else ""} \
      ~{if defined(sample_input_file) then ("--sample_input_file " +  '"' + sample_input_file + '"') else ""} \
      ~{if (fastq_sample_forwardreads) then "-1" else ""} \
      ~{if (fastq_input_reverse) then "-2" else ""}
  >>>
  parameter_meta {
    output_file_mlst: "Output file with MLST call"
    db: "Kmer database"
    mutation_threshold: "Maximum number of mutations when looking for\\nnovel alleles. (type: Int64, default: 6)"
    kt: "Minimum # of times a kmer is seen to be\\nconsidered present in the sample (solid).\\n(type: Int64, default: 10)"
    output_votes: "Outputs the results for the original voting"
    sample_input_file: "Input TXT file for multiple samples. First\\ncolumn has the sample name, second the FASTQ\\nfile. Repeat the sample name for samples with\\nmore than one file (paired reads, f.i.)"
    fastq_sample_forwardreads: "[_1...]            FastQ input files, one per sample, forward\\nreads (or unpaired reads)."
    fastq_input_reverse: "[_2...]            FastQ input files, one per sample, reverse"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_mlst = "${in_output_file_mlst}"
  }
}