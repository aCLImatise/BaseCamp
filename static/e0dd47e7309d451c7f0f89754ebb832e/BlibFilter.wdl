version 1.0

task BlibFilter {
  input {
    Boolean? arg_sqlite_size
    Boolean? arg_only_include
    Boolean? arg_best_spectrum
    Boolean? arg_description_option
    Boolean? arg_file_containing
    Boolean? arg_status_control
    String redundant_library
    String filtered_library
  }
  command <<<
    BlibFilter \
      ~{redundant_library} \
      ~{filtered_library} \
      ~{true="-m" false="" arg_sqlite_size} \
      ~{true="-n" false="" arg_only_include} \
      ~{true="-s" false="" arg_best_spectrum} \
      ~{true="-b" false="" arg_description_option} \
      ~{true="-p" false="" arg_file_containing} \
      ~{true="-v" false="" arg_status_control}
  >>>
  parameter_meta {
    arg_sqlite_size: "[ --memory-cache ] arg (=250)  SQLite memory cache size in Megs.  Default  250M."
    arg_only_include: "[ --min-peaks ] arg (=1)       Only include spectra with at least this  many peaks.  Default 1."
    arg_best_spectrum: "[ --min-score ] arg (=0)       Best spectrum must have at least this  average score to be included.  Default 0."
    arg_description_option: "[ --best-scoring ] arg (=0)    Description of option.  Default false."
    arg_file_containing: "[ --parameter-file ] arg       File containing search parameters.  Command line values override file values."
    arg_status_control: "[ --verbosity ] arg (=status)  Control the level of output to stderr.  (silent, error, status, warn, debug,  detail, all)  Default status."
    redundant_library: ""
    filtered_library: ""
  }
}