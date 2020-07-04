version 1.0

task IuFastaToFastq {
  input {
    String? number_of_sequences
    String? fastq_output_file
    Boolean? rev_comp
    String fasta_file_converted
  }
  command <<<
    iu-fasta-to-fastq \
      ~{fasta_file_converted} \
      ~{if defined(number_of_sequences) then ("--number-of-sequences " +  '"' + number_of_sequences + '"') else ""} \
      ~{if defined(fastq_output_file) then ("--output " +  '"' + fastq_output_file + '"') else ""} \
      ~{true="--rev-comp" false="" rev_comp}
  >>>
  parameter_meta {
    number_of_sequences: "Number of sequences to be converted (by default the everything will be processed)"
    fastq_output_file: "FASTQ output file name (default: [-i]-FASTA-[-n]"
    rev_comp: "When set, during the conversion reads will be reverse complemented."
    fasta_file_converted: "FASTA file to be converted"
  }
}