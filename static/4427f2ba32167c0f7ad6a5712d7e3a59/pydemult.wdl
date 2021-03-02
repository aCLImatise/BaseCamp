version 1.0

task Pydemult {
  input {
    File? fast_q
    String? sample_sheet
    String? column_separator
    String? barcode_column
    String? sample_column
    String? barcode_regex
    Int? edit_distance
    String? edit_alphabet
    Int? buffer_size
    Directory? output_directory_write
    File? output_file_suffix
    Boolean? write_unmatched
    Int? threads
    Int? writer_threads
    String unmatched_dot_fast_q_do_tgz
  }
  command <<<
    pydemult \
      ~{unmatched_dot_fast_q_do_tgz} \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(sample_sheet) then ("--samplesheet " +  '"' + sample_sheet + '"') else ""} \
      ~{if defined(column_separator) then ("--column-separator " +  '"' + column_separator + '"') else ""} \
      ~{if defined(barcode_column) then ("--barcode-column " +  '"' + barcode_column + '"') else ""} \
      ~{if defined(sample_column) then ("--sample-column " +  '"' + sample_column + '"') else ""} \
      ~{if defined(barcode_regex) then ("--barcode-regex " +  '"' + barcode_regex + '"') else ""} \
      ~{if defined(edit_distance) then ("--edit-distance " +  '"' + edit_distance + '"') else ""} \
      ~{if defined(edit_alphabet) then ("--edit-alphabet " +  '"' + edit_alphabet + '"') else ""} \
      ~{if defined(buffer_size) then ("--buffer-size " +  '"' + buffer_size + '"') else ""} \
      ~{if defined(output_directory_write) then ("--output " +  '"' + output_directory_write + '"') else ""} \
      ~{if (output_file_suffix) then "--output-file-suffix" else ""} \
      ~{if (write_unmatched) then "--write-unmatched" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(writer_threads) then ("--writer-threads " +  '"' + writer_threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_q: "FASTQ file for demultiplexing."
    sample_sheet: "Samplesheet containing barcodes and samplenames"
    column_separator: "Separator that is used in samplesheet"
    barcode_column: "Name of the column containing barcodes"
    sample_column: "Name of the column containing sample names"
    barcode_regex: "Regular expression to parse cell barcode (CB) and UMIs\\n(UMI) from read names"
    edit_distance: "Maximum allowed edit distance for barcodes"
    edit_alphabet: "The alphabet that is used to created edited barcodes"
    buffer_size: "Buffer size for the FASTQ reader (in Bytes). Must be\\nlarge enough to contain the largest entry."
    output_directory_write: "Output directory to write individual fastq files to."
    output_file_suffix: ".fastq.gz\\nA suffix to append to individual fastq files."
    write_unmatched: "Write reads with unmatched barcodes into"
    threads: "Number of threads to use for multiprocessing."
    writer_threads: "Number of threads to use for writing"
    unmatched_dot_fast_q_do_tgz: "--keep-empty          Keep empty sequences in demultiplexed output files."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_write = "${in_output_directory_write}"
    File out_output_file_suffix = "${in_output_file_suffix}"
  }
}