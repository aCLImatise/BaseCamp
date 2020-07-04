version 1.0

task RNAparconv {
  input {
    Boolean? full_help
    File? specify_output_file_name
    File? specify_input_file_name
    Boolean? vanilla
    Boolean? dump
    Boolean? silent
    String? input_file
    String? output_file
  }
  command <<<
    RNAparconv \
      ~{input_file} \
      ~{output_file} \
      ~{true="--full-help" false="" full_help} \
      ~{if defined(specify_output_file_name) then ("--output " +  '"' + specify_output_file_name + '"') else ""} \
      ~{if defined(specify_input_file_name) then ("--input " +  '"' + specify_input_file_name + '"') else ""} \
      ~{true="--vanilla" false="" vanilla} \
      ~{true="--dump" false="" dump} \
      ~{true="--silent" false="" silent}
  >>>
  parameter_meta {
    full_help: "Print help, including hidden options, and exit"
    specify_output_file_name: "Specify an output file name. If argument is missing the converted energy parameters are printed to 'stdout'."
    specify_input_file_name: "Specify an input file name. If argument is missing the energy parameter input can be supplied via 'stdin'."
    vanilla: "Print just as much as needed to represent the given energy parameters data set. This option overrides all other output settings! (default=off)"
    dump: "Just dump Vienna 1.8.4 energy parameters in format used since 2.0. This option skips any energy parameter input! (default=off)"
    silent: "Print just energy parameters and appropriate comment lines but suppress all other output (default=off)"
    input_file: ""
    output_file: ""
  }
}