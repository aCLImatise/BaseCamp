version 1.0

task RNAparconv {
  input {
    Boolean? full_help
    File? specify_output_name
    File? specify_input_name
    Boolean? vanilla
    Boolean? dump
    Boolean? silent
    File? input_file
    File? output_file
  }
  command <<<
    RNAparconv \
      ~{input_file} \
      ~{output_file} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if defined(specify_output_name) then ("--output " +  '"' + specify_output_name + '"') else ""} \
      ~{if defined(specify_input_name) then ("--input " +  '"' + specify_input_name + '"') else ""} \
      ~{if (vanilla) then "--vanilla" else ""} \
      ~{if (dump) then "--dump" else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  parameter_meta {
    full_help: "Print help, including hidden options, and exit"
    specify_output_name: "Specify an output file name. If argument is missing\\nthe converted energy parameters are printed to\\n'stdout'."
    specify_input_name: "Specify an input file name. If argument is missing\\nthe energy parameter input can be supplied via\\n'stdin'."
    vanilla: "Print just as much as needed to represent the given\\nenergy parameters data set.\\nThis option overrides all other output settings!\\n(default=off)"
    dump: "Just dump Vienna 1.8.4 energy parameters in format\\nused since 2.0.\\nThis option skips any energy parameter input!\\n(default=off)"
    silent: "Print just energy parameters and appropriate comment\\nlines but suppress all other output\\n(default=off)"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_specify_output_name = "${in_specify_output_name}"
    File out_output_file = "${in_output_file}"
  }
}