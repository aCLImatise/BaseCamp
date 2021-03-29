version 1.0

task Iufastatofastq {
  input {
    Int? number_of_sequences
    File? fastq_output_file
    Boolean? rev_comp
    String fasta_file_converted
  }
  command <<<
    iu_fasta_to_fastq \
      ~{fasta_file_converted} \
      ~{if defined(number_of_sequences) then ("--number-of-sequences " +  '"' + number_of_sequences + '"') else ""} \
      ~{if defined(fastq_output_file) then ("--output " +  '"' + fastq_output_file + '"') else ""} \
      ~{if (rev_comp) then "--rev-comp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/illumina-utils:2.11--py_0"
  }
  parameter_meta {
    number_of_sequences: "Number of sequences to be converted (by default the\\neverything will be processed)"
    fastq_output_file: "FASTQ output file name (default: [-i]-FASTA-[-n]"
    rev_comp: "When set, during the conversion reads will be reverse\\ncomplemented.\\n"
    fasta_file_converted: "FASTA file to be converted"
  }
  output {
    File out_stdout = stdout()
    File out_fastq_output_file = "${in_fastq_output_file}"
  }
}