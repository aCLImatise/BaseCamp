version 1.0

task ICountDemultiplex {
  input {
    Boolean? mis
    Boolean? ml
    Boolean? prefix
    Directory? od
    Boolean? _stdoutlog_threshold
    Boolean? _filelog_threshold
    Boolean? _filelogpath_path
    Boolean? _file_store
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
      ~{if (mis) then "-mis" else ""} \
      ~{if (ml) then "-ml" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (od) then "-od" else ""} \
      ~{if (_stdoutlog_threshold) then "-S" else ""} \
      ~{if (_filelog_threshold) then "-F" else ""} \
      ~{if (_filelogpath_path) then "-P" else ""} \
      ~{if (_file_store) then "-M" else ""}
  >>>
  parameter_meta {
    mis: ", --mismatches   Number of tolerated mismatches when comparing barcodes (default: 1)"
    ml: ", --minimum_length\\nMinimum length of trimmed sequence to keep (default: 15)"
    prefix: "Prefix of generated FASTQ files (default: demux)"
    od: ", --out_dir       Output folder. Use local folder if none given (default: .)"
    _stdoutlog_threshold: ", --stdout_log     Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF."
    _filelog_threshold: ", --file_log       Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF."
    _filelogpath_path: ", --file_logpath   Path to log file."
    _file_store: ", --results_file   File into which to store Metrics."
    i_count_dot_demultiplex_dot_run: "positional arguments:"
    reads: "Path to reads from a sequencing library"
    adapter: "Adapter sequence to remove from ends of reads"
    barcodes: "List of barcodes used for library"
  }
  output {
    File out_stdout = stdout()
    Directory out_od = "${in_od}"
  }
}