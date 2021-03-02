version 1.0

task Iufastqtofasta {
  input {
    Int? number_of_sequences
    String? fasta_output_default
    Boolean? rev_comp
    Boolean? u
    String fastq_file_converted
    String complemented_dot
  }
  command <<<
    iu_fastq_to_fasta \
      ~{fastq_file_converted} \
      ~{complemented_dot} \
      ~{if defined(number_of_sequences) then ("--number-of-sequences " +  '"' + number_of_sequences + '"') else ""} \
      ~{if defined(fasta_output_default) then ("--output " +  '"' + fasta_output_default + '"') else ""} \
      ~{if (rev_comp) then "--rev-comp" else ""} \
      ~{if (u) then "-u" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/illumina-utils:2.10--py_0"
  }
  parameter_meta {
    number_of_sequences: "Number of sequences to be converted"
    fasta_output_default: "FASTA output (default: [-i]-FASTA-[-n]"
    rev_comp: "When set, during the conversion reads will be reverse"
    u: ""
    fastq_file_converted: "FASTQ file to be converted"
    complemented_dot: "-u, --uppercase       When set, all nucleotides are converted to uppercase,"
  }
  output {
    File out_stdout = stdout()
  }
}