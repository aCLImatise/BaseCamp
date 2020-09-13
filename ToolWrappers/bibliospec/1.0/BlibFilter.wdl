version 1.0

task BlibFilter {
  input {
    Boolean? arg_sqlite_memory
    Boolean? arg_best_spectrum
    Boolean? arg_description_option
    Boolean? arg_file_containing
    Boolean? arg_status_control
    Int two_five_zero_mdot
  }
  command <<<
    BlibFilter \
      ~{two_five_zero_mdot} \
      ~{if (arg_sqlite_memory) then "-m" else ""} \
      ~{if (arg_best_spectrum) then "-s" else ""} \
      ~{if (arg_description_option) then "-b" else ""} \
      ~{if (arg_file_containing) then "-p" else ""} \
      ~{if (arg_status_control) then "-v" else ""}
  >>>
  parameter_meta {
    arg_sqlite_memory: "[ --memory-cache ] arg (=250)  SQLite memory cache size in Megs.  Default"
    arg_best_spectrum: "[ --min-score ] arg (=0)       Best spectrum must have at least this\\naverage score to be included.  Default 0."
    arg_description_option: "[ --best-scoring ] arg (=0)    Description of option.  Default false."
    arg_file_containing: "[ --parameter-file ] arg       File containing search parameters.  Command\\nline values override file values."
    arg_status_control: "[ --verbosity ] arg (=status)  Control the level of output to stderr.\\n(silent, error, status, warn, debug,\\ndetail, all)  Default status."
    two_five_zero_mdot: "-n [ --min-peaks ] arg (=1)       Only include spectra with at least this "
  }
  output {
    File out_stdout = stdout()
  }
}