version 1.0

task MotusMapSnv {
  input {
    Array[File] input_files_reads_forward
    Array[File] input_files_reads_reverse
    Array[File] input_files_reads_mate
    String? db
    Boolean? file_output_name
    Boolean? int_min_length
    Boolean? int_number_threads
    Boolean? int_error_warning
  }
  command <<<
    motus map_snv \
      ~{if defined(input_files_reads_forward) then ("-f " +  '"' + input_files_reads_forward + '"') else ""} \
      ~{if defined(input_files_reads_reverse) then ("-r " +  '"' + input_files_reads_reverse + '"') else ""} \
      ~{if defined(input_files_reads_mate) then ("-s " +  '"' + input_files_reads_mate + '"') else ""} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{true="-o" false="" file_output_name} \
      ~{true="-l" false="" int_min_length} \
      ~{true="-t" false="" int_number_threads} \
      ~{true="-v" false="" int_error_warning}
  >>>
  parameter_meta {
    input_files_reads_forward: "input file(s) for reads in forward orientation, fastq formatted"
    input_files_reads_reverse: "input file(s) for reads in reverse orientation, fastq formatted"
    input_files_reads_mate: "input file(s) for reads without mate, fastq formatted"
    db: "provide a database directory"
    file_output_name: "FILE         output bam file name [stdout]"
    int_min_length: "INT          min. length of alignment for the reads (number of nucleotides) [75]"
    int_number_threads: "INT          number of threads [1]"
    int_error_warning: "INT          verbose level: 1=error, 2=warning, 3=message, 4+=debugging [3]"
  }
}