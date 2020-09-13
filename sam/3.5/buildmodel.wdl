version 1.0

task Buildmodel {
  input {
    File? train
    File? insert
    File? dump_parameters
    String? option
    String run_name
  }
  command <<<
    buildmodel \
      ~{run_name} \
      ~{if defined(train) then ("-train " +  '"' + train + '"') else ""} \
      ~{if defined(insert) then ("-insert " +  '"' + insert + '"') else ""} \
      ~{if (dump_parameters) then "-dump_parameters" else ""} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  parameter_meta {
    train: ": File to read sequences from."
    insert: "or -i <string>: where string is a parameter file."
    dump_parameters: "<0, 1, or 2>: Default [0] means only modified parameters are\\nprinted to output file. [1] outputs all parameters to output file.\\n[2] prints all default parameters to the file default.params.\\n"
    option: ""
    run_name: ""
  }
  output {
    File out_stdout = stdout()
    File out_dump_parameters = "${in_dump_parameters}"
  }
}