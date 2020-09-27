version 1.0

task ICountIndexstar {
  input {
    Boolean? _annotation_annotation
    Boolean? overhang
    Boolean? overhang_min
    Boolean? threads
    Boolean? _stdoutlog_threshold
    Boolean? _filelog_threshold
    Boolean? _filelogpath_path
    Boolean? _file_store
    String genome
    String genome_index
  }
  command <<<
    iCount indexstar \
      ~{genome} \
      ~{genome_index} \
      ~{if (_annotation_annotation) then "-a" else ""} \
      ~{if (overhang) then "--overhang" else ""} \
      ~{if (overhang_min) then "--overhang_min" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (_stdoutlog_threshold) then "-S" else ""} \
      ~{if (_filelog_threshold) then "-F" else ""} \
      ~{if (_filelogpath_path) then "-P" else ""} \
      ~{if (_file_store) then "-M" else ""}
  >>>
  parameter_meta {
    _annotation_annotation: ", --annotation     Annotation that defines splice junctions (default: )"
    overhang: "Sequence length around annotated junctions to be used by STAR when\\nconstructing splice junction database (default: 100)"
    overhang_min: "TODO (default: 8)"
    threads: "Number of threads that STAR can use for generating index (default: 1)"
    _stdoutlog_threshold: ", --stdout_log     Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF."
    _filelog_threshold: ", --file_log       Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF."
    _filelogpath_path: ", --file_logpath   Path to log file."
    _file_store: ", --results_file   File into which to store Metrics."
    genome: "Genome sequence to index"
    genome_index: "Output folder, where to store genome index"
  }
  output {
    File out_stdout = stdout()
  }
}