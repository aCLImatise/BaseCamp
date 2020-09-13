version 1.0

task ICountCutadapt {
  input {
    Boolean? qual_trim
    Boolean? ml
    Boolean? _stdoutlog_threshold
    Boolean? _filelog_threshold
    Boolean? _filelogpath_path
    Boolean? _file_store
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
      ~{if (ml) then "-ml" else ""} \
      ~{if (_stdoutlog_threshold) then "-S" else ""} \
      ~{if (_filelog_threshold) then "-F" else ""} \
      ~{if (_filelogpath_path) then "-P" else ""} \
      ~{if (_file_store) then "-M" else ""}
  >>>
  parameter_meta {
    qual_trim: "Trim low-quality bases before adapter removal (default: None)"
    ml: ", --minimum_length\\nDiscard trimmed reads that are shorter than `minimum_length` (default: None)"
    _stdoutlog_threshold: ", --stdout_log     Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF."
    _filelog_threshold: ", --file_log       Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF."
    _filelogpath_path: ", --file_logpath   Path to log file."
    _file_store: ", --results_file   File into which to store Metrics."
    reads: "Input FASTQ file"
    reads_trimmed: "Output FASTQ file containing trimmed reads"
    adapter: "Sequence of an adapter ligated to the 3' end"
  }
  output {
    File out_stdout = stdout()
  }
}