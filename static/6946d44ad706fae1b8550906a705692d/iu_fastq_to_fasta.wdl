version 1.0

task IuFastqToFasta {
  input {
    String? number_of_sequences
    String? fasta_output_default
    Boolean? rev_comp
    String fastq_file_converted
  }
  command <<<
    iu-fastq-to-fasta \
      ~{fastq_file_converted} \
      ~{if defined(number_of_sequences) then ("--number-of-sequences " +  '"' + number_of_sequences + '"') else ""} \
      ~{if defined(fasta_output_default) then ("--output " +  '"' + fasta_output_default + '"') else ""} \
      ~{true="--rev-comp" false="" rev_comp}
  >>>
  parameter_meta {
    number_of_sequences: "Number of sequences to be converted"
    fasta_output_default: "FASTA output (default: [-i]-FASTA-[-n]"
    rev_comp: "When set, during the conversion reads will be reverse complemented."
    fastq_file_converted: "FASTQ file to be converted"
  }
}