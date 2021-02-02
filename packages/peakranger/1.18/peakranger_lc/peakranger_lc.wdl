version 1.0

task PeakrangerLc {
  input {
    Boolean? arg_data_file
    Boolean? verbose
    String var_input
  }
  command <<<
    peakranger lc \
      ~{var_input} \
      ~{if (arg_data_file) then "-d" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    arg_data_file: "[ --data ] arg      the data file"
    verbose: "show progress when possible"
    var_input: ""
  }
  output {
    File out_stdout = stdout()
  }
}