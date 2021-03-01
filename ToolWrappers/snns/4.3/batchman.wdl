version 1.0

task Batchman {
  input {
    File? read_input_file
    File? logfile_write_output
    Boolean? parseonly_just_check
    Boolean? quiet_mode_warnings
    Boolean? _suppress_warnings
  }
  command <<<
    batchman \
      ~{if defined(read_input_file) then ("-f " +  '"' + read_input_file + '"') else ""} \
      ~{if defined(logfile_write_output) then ("-l " +  '"' + logfile_write_output + '"') else ""} \
      ~{if (parseonly_just_check) then "-p" else ""} \
      ~{if (quiet_mode_warnings) then "-q" else ""} \
      ~{if (_suppress_warnings) then "-s" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    read_input_file: ": read input from <file>"
    logfile_write_output: ": (logfile) write output to <file>"
    parseonly_just_check: ": parse-only; just check the syntax, do not execute"
    quiet_mode_warnings: ": quiet mode; neither warnings nor errors are printed"
    _suppress_warnings: ": suppress warnings"
  }
  output {
    File out_stdout = stdout()
    File out_logfile_write_output = "${in_logfile_write_output}"
  }
}