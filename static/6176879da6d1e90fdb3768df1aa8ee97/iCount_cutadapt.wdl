version 1.0

task ICountCutadapt {
  input {
    Boolean? qual_trim
    Boolean? minimum_length
    Boolean? stdout_log
    Boolean? file_log
    Boolean? file_log_path
    Boolean? results_file
    String reads
    String reads_trimmed
    String adapter
  }
  command <<<
    iCount cutadapt \
      ~{reads} \
      ~{reads_trimmed} \
      ~{adapter} \
      ~{if (qual_trim) then "--qual_trim" else ""} \
      ~{if (minimum_length) then "--minimum_length" else ""} \
      ~{if (stdout_log) then "--stdout_log" else ""} \
      ~{if (file_log) then "--file_log" else ""} \
      ~{if (file_log_path) then "--file_logpath" else ""} \
      ~{if (results_file) then "--results_file" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    qual_trim: "Trim low-quality bases before adapter removal (default: None)"
    minimum_length: "Discard trimmed reads that are shorter than `minimum_length` (default: None)"
    stdout_log: "Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF."
    file_log: "Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF."
    file_log_path: "Path to log file."
    results_file: "File into which to store Metrics."
    reads: "Input FASTQ file"
    reads_trimmed: "Output FASTQ file containing trimmed reads"
    adapter: "Sequence of an adapter ligated to the 3' end"
  }
  output {
    File out_stdout = stdout()
  }
}