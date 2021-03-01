version 1.0

task Iufastqtofasta {
  input {
    Int? number_of_sequences
    String? fasta_output_default
    Boolean? rev_comp
    String fastq_file_converted
  }
  command <<<
    iu_fastq_to_fasta \
      ~{fastq_file_converted} \
      ~{if defined(number_of_sequences) then ("--number-of-sequences " +  '"' + number_of_sequences + '"') else ""} \
      ~{if defined(fasta_output_default) then ("--output " +  '"' + fasta_output_default + '"') else ""} \
      ~{if (rev_comp) then "--rev-comp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    number_of_sequences: "Number of sequences to be converted"
    fasta_output_default: "FASTA output (default: [-i]-FASTA-[-n]"
    rev_comp: "When set, during the conversion reads will be reverse\\ncomplemented.\\n"
    fastq_file_converted: "FASTQ file to be converted"
  }
  output {
    File out_stdout = stdout()
  }
}