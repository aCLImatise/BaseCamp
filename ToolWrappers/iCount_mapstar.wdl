version 1.0

task ICountMapstar {
  input {
    Boolean? _annotation_gtf
    Boolean? multimax
    Boolean? mis
    Boolean? threads
    Boolean? _stdoutlog_threshold
    Boolean? _filelog_threshold
    Boolean? _filelogpath_path
    Boolean? _file_store
    String reads
    String genome_index
    String out_dir
  }
  command <<<
    iCount mapstar \
      ~{reads} \
      ~{genome_index} \
      ~{out_dir} \
      ~{if (_annotation_gtf) then "-a" else ""} \
      ~{if (multimax) then "--multimax" else ""} \
      ~{if (mis) then "-mis" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (_stdoutlog_threshold) then "-S" else ""} \
      ~{if (_filelog_threshold) then "-F" else ""} \
      ~{if (_filelogpath_path) then "-P" else ""} \
      ~{if (_file_store) then "-M" else ""}
  >>>
  parameter_meta {
    _annotation_gtf: ", --annotation     GTF annotation needed for mapping to splice-junctions (default: )"
    multimax: "Number of allowed multiple hits (default: 10)"
    mis: ", --mismatches   Number of allowed mismatches (default: 2)"
    threads: "Number of threads that STAR can use for generating index (default: 1)"
    _stdoutlog_threshold: ", --stdout_log     Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF."
    _filelog_threshold: ", --file_log       Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF."
    _filelogpath_path: ", --file_logpath   Path to log file."
    _file_store: ", --results_file   File into which to store Metrics."
    reads: "Sequencing reads to map to genome"
    genome_index: "Folder with genome index"
    out_dir: "Output folder, where to store mapping results"
  }
  output {
    File out_stdout = stdout()
  }
}