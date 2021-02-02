version 1.0

task ICountAnnotation {
  input {
    Boolean? _release_release
    Boolean? od
    Boolean? _annotation_filename
    Boolean? _stdoutlog_threshold
    Boolean? _filelog_threshold
    Boolean? _filelogpath_path
    Boolean? _file_store
    String species
  }
  command <<<
    iCount annotation \
      ~{species} \
      ~{if (_release_release) then "-r" else ""} \
      ~{if (od) then "-od" else ""} \
      ~{if (_annotation_filename) then "-a" else ""} \
      ~{if (_stdoutlog_threshold) then "-S" else ""} \
      ~{if (_filelog_threshold) then "-F" else ""} \
      ~{if (_filelogpath_path) then "-P" else ""} \
      ~{if (_file_store) then "-M" else ""}
  >>>
  parameter_meta {
    _release_release: ", --release        Release number. Only ENSEMBL releases 59-88 are available (default: 88)"
    od: ", --out_dir       Download to this directory (if not given, current working directory) (default: None)"
    _annotation_filename: ", --annotation     Annotation filename (must have .gz file extension). If not given,\\nspecies.release.gtf.gz is used. If annotation is provided as absolute\\npath, value of out_dir parameter is ignored and file is saved to given\\nabsolute path (default: None)"
    _stdoutlog_threshold: ", --stdout_log     Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF."
    _filelog_threshold: ", --file_log       Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF."
    _filelogpath_path: ", --file_logpath   Path to log file."
    _file_store: ", --results_file   File into which to store Metrics."
    species: "Species latin name"
  }
  output {
    File out_stdout = stdout()
  }
}