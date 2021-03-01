version 1.0

task MotusMapTax {
  input {
    Array[File] input_files_reads_forward_formatted
    Array[File] input_files_reads_reverse_formatted
    Array[File] input_files_reads_mate_formatted
    File? output_file_name
    Boolean? save_result_bwa
    Int? min_length_alignment
    Int? number_of_threads
    Int? verbose_level_error
  }
  command <<<
    motus map_tax \
      ~{if defined(input_files_reads_forward_formatted) then ("-f " +  '"' + input_files_reads_forward_formatted + '"') else ""} \
      ~{if defined(input_files_reads_reverse_formatted) then ("-r " +  '"' + input_files_reads_reverse_formatted + '"') else ""} \
      ~{if defined(input_files_reads_mate_formatted) then ("-s " +  '"' + input_files_reads_mate_formatted + '"') else ""} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""} \
      ~{if (save_result_bwa) then "-b" else ""} \
      ~{if defined(min_length_alignment) then ("-l " +  '"' + min_length_alignment + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(verbose_level_error) then ("-v " +  '"' + verbose_level_error + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_files_reads_forward_formatted: "input file(s) for reads in forward orientation, fastq formatted"
    input_files_reads_reverse_formatted: "input file(s) for reads in reverse orientation, fastq formatted"
    input_files_reads_mate_formatted: "input file(s) for reads without mate, fastq formatted"
    output_file_name: "output file name [stdout]"
    save_result_bwa: "save the result of bwa in bam format"
    min_length_alignment: "min. length of alignment for the reads (number of nucleotides) [75]"
    number_of_threads: "number of threads [1]"
    verbose_level_error: "verbose level: 1=error, 2=warning, 3=message, 4+=debugging [3]"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}