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
      ~{true="-d" false="" arg_data_file} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    arg_data_file: "[ --data ] arg      the data file"
    verbose: "show progress when possible"
    var_input: ""
  }
}