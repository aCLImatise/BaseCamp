version 1.0

task ICountDemultiplex {
  input {
    Boolean? mismatches
    Boolean? minimum_length
    Boolean? prefix
    Directory? out_dir
    Boolean? stdout_log
    Boolean? file_log
    Boolean? file_log_path
    Boolean? results_file
    String i_count_dot_demultiplex_dot_run
    String reads
    String adapter
    String barcodes
  }
  command <<<
    iCount demultiplex \
      ~{i_count_dot_demultiplex_dot_run} \
      ~{reads} \
      ~{adapter} \
      ~{barcodes} \
      ~{if (mismatches) then "--mismatches" else ""} \
      ~{if (minimum_length) then "--minimum_length" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (out_dir) then "--out_dir" else ""} \
      ~{if (stdout_log) then "--stdout_log" else ""} \
      ~{if (file_log) then "--file_log" else ""} \
      ~{if (file_log_path) then "--file_logpath" else ""} \
      ~{if (results_file) then "--results_file" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mismatches: "Number of tolerated mismatches when comparing barcodes (default: 1)"
    minimum_length: "Minimum length of trimmed sequence to keep (default: 15)"
    prefix: "Prefix of generated FASTQ files (default: demux)"
    out_dir: "Output folder. Use local folder if none given (default: .)"
    stdout_log: "Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF."
    file_log: "Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF."
    file_log_path: "Path to log file."
    results_file: "File into which to store Metrics."
    i_count_dot_demultiplex_dot_run: "positional arguments:"
    reads: "Path to reads from a sequencing library"
    adapter: "Adapter sequence to remove from ends of reads"
    barcodes: "List of barcodes used for library"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}