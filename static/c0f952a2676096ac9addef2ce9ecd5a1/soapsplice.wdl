version 1.0

task Soapsplice {
  input {
    String? prefix_reference_index
    File? _reads_file_fastafastq_format
    File? reads_file__fastafastq_format
    File? prefix_output_files
    Int? number_threads_default
    Int? forward_reverse_default
    Int? maximum_mismatch_onesegment
    Int? maximum_indel_default
    Int? length_can_ignored
    Int? longest_gap_two
    Int? shortest_length_segment
    Int? output_read_output
    Int? format_original_default
    Int? set_mapq_mapping
    Int? input_quality_type
    Int? maximum_distance_pairedend
    Int? minimum_distance_pairedend
    Int? insert_length_pairedend
    Int? output_junction_information
  }
  command <<<
    soapsplice \
      ~{if defined(prefix_reference_index) then ("-d " +  '"' + prefix_reference_index + '"') else ""} \
      ~{if defined(_reads_file_fastafastq_format) then ("-1 " +  '"' + _reads_file_fastafastq_format + '"') else ""} \
      ~{if defined(reads_file__fastafastq_format) then ("-2 " +  '"' + reads_file__fastafastq_format + '"') else ""} \
      ~{if defined(prefix_output_files) then ("-o " +  '"' + prefix_output_files + '"') else ""} \
      ~{if defined(number_threads_default) then ("-p " +  '"' + number_threads_default + '"') else ""} \
      ~{if defined(forward_reverse_default) then ("-S " +  '"' + forward_reverse_default + '"') else ""} \
      ~{if defined(maximum_mismatch_onesegment) then ("-m " +  '"' + maximum_mismatch_onesegment + '"') else ""} \
      ~{if defined(maximum_indel_default) then ("-g " +  '"' + maximum_indel_default + '"') else ""} \
      ~{if defined(length_can_ignored) then ("-i " +  '"' + length_can_ignored + '"') else ""} \
      ~{if defined(longest_gap_two) then ("-t " +  '"' + longest_gap_two + '"') else ""} \
      ~{if defined(shortest_length_segment) then ("-a " +  '"' + shortest_length_segment + '"') else ""} \
      ~{if defined(output_read_output) then ("-c " +  '"' + output_read_output + '"') else ""} \
      ~{if defined(format_original_default) then ("-f " +  '"' + format_original_default + '"') else ""} \
      ~{if defined(set_mapq_mapping) then ("-s " +  '"' + set_mapq_mapping + '"') else ""} \
      ~{if defined(input_quality_type) then ("-q " +  '"' + input_quality_type + '"') else ""} \
      ~{if defined(maximum_distance_pairedend) then ("-L " +  '"' + maximum_distance_pairedend + '"') else ""} \
      ~{if defined(minimum_distance_pairedend) then ("-l " +  '"' + minimum_distance_pairedend + '"') else ""} \
      ~{if defined(insert_length_pairedend) then ("-I " +  '"' + insert_length_pairedend + '"') else ""} \
      ~{if defined(output_junction_information) then ("-j " +  '"' + output_junction_information + '"') else ""}
  >>>
  parameter_meta {
    prefix_reference_index: "* Prefix of reference index files"
    _reads_file_fastafastq_format: "* Reads file 1, FASTA/FASTQ format"
    reads_file__fastafastq_format: "Reads file 2, FASTA/FASTQ format"
    prefix_output_files: "* Prefix of output files, (can be with file directory)"
    number_threads_default: "Number of threads, <= 20, 1 (default)"
    forward_reverse_default: "1: Forward, 2: Reverse, 3: Both (default)"
    maximum_mismatch_onesegment: "Maximum mismatch for one-segment alignment, <= 5, 3 (default)"
    maximum_indel_default: "Maximum indel for one-segment alignment, <= 2, 2 (default)"
    length_can_ignored: "Length of tail that can be ignored in one-segment alignment, 7 (default)"
    longest_gap_two: "Longest gap between two segments in two-segment alignment, 500000 (default)"
    shortest_length_segment: "Shortest length of a segment in two-segment alignment, 8 (default)"
    output_read_output: "1: Output read and its quality in one-segment alignment output file (default) 0: Don't output such information to save disk space"
    format_original_default: "Format of output files, 0: original (default), 1: SOAP, 2: SAM"
    set_mapq_mapping: "Set the MAPQ (mapping quality) field to this value, just valid in SAM format, 255 (default)"
    input_quality_type: "Input quality type in FASTQ file 0: quality = Phred + 64, used in Illumina/Solexa format, (default) 1: quality = Phred + 33, used in Sanger format"
    maximum_distance_pairedend: "The maximum distance between paired-end reads, 500000 (default)"
    minimum_distance_pairedend: "The minimum distance between paired-end reads, 50 (default)"
    insert_length_pairedend: "The insert length of paired-end reads"
    output_junction_information: "1: Output junction information (default) 0: Don't output junction information"
  }
}