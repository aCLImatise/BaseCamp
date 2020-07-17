version 1.0

task Pandaseq {
  input {
    String? input_fastq_file_containing_forward
    String? output_log_text
    String? input_fastq_file_containing_barcodeindex
    Boolean? input_files_bzipped
    String? number_kmers_table
    Int? minimum_length_sequence
    Int? minumum_overlap_region
    String? forward_primer_sequence
    String? reverse_primer_sequence
    String? input_fastq_file_containing_reads
    String? minimum_probability_sequence
    String? file_write_pairs
    Boolean? show_version_exit
    String? output_seqences_fasta
    Boolean? six
  }
  command <<<
    pandaseq \
      ~{if defined(input_fastq_file_containing_forward) then ("-f " +  '"' + input_fastq_file_containing_forward + '"') else ""} \
      ~{if defined(output_log_text) then ("-g " +  '"' + output_log_text + '"') else ""} \
      ~{if defined(input_fastq_file_containing_barcodeindex) then ("-i " +  '"' + input_fastq_file_containing_barcodeindex + '"') else ""} \
      ~{true="-j" false="" input_files_bzipped} \
      ~{if defined(number_kmers_table) then ("-k " +  '"' + number_kmers_table + '"') else ""} \
      ~{if defined(minimum_length_sequence) then ("-l " +  '"' + minimum_length_sequence + '"') else ""} \
      ~{if defined(minumum_overlap_region) then ("-o " +  '"' + minumum_overlap_region + '"') else ""} \
      ~{if defined(forward_primer_sequence) then ("-p " +  '"' + forward_primer_sequence + '"') else ""} \
      ~{if defined(reverse_primer_sequence) then ("-q " +  '"' + reverse_primer_sequence + '"') else ""} \
      ~{if defined(input_fastq_file_containing_reads) then ("-r " +  '"' + input_fastq_file_containing_reads + '"') else ""} \
      ~{if defined(minimum_probability_sequence) then ("-t " +  '"' + minimum_probability_sequence + '"') else ""} \
      ~{if defined(file_write_pairs) then ("-u " +  '"' + file_write_pairs + '"') else ""} \
      ~{true="-v" false="" show_version_exit} \
      ~{if defined(output_seqences_fasta) then ("-w " +  '"' + output_seqences_fasta + '"') else ""} \
      ~{true="-6" false="" six}
  >>>
  parameter_meta {
    input_fastq_file_containing_forward: "Input FASTQ file containing forward reads."
    output_log_text: "Output log to a text file."
    input_fastq_file_containing_barcodeindex: "Input FASTQ file containing separate barcode/index reads."
    input_files_bzipped: "Input files are bzipped. (Deprecated.)"
    number_kmers_table: "The number of k-mers in the table."
    minimum_length_sequence: "Minimum length for a sequence."
    minumum_overlap_region: "Minumum overlap region length for a sequence."
    forward_primer_sequence: "Forward primer sequence or number of bases to be removed."
    reverse_primer_sequence: "Reverse primer sequence or number of bases to be removed."
    input_fastq_file_containing_reads: "Input FASTQ file containing reverse reads."
    minimum_probability_sequence: "The minimum probability that a sequence must have to assemble and, if used, match a primer."
    file_write_pairs: "File to write unalignable read pairs."
    show_version_exit: "Show version and exit."
    output_seqences_fasta: "Output seqences to a FASTA (or FASTQ) file."
    six: ""
  }
}