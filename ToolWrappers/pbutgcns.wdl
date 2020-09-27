version 1.0

task Pbutgcns {
  input {
    Boolean? increase_logging_verbosity
    Boolean? arg_number_use
    File? unitig_input_file
    String var_3
  }
  command <<<
    pbutgcns \
      ~{var_3} \
      ~{if (increase_logging_verbosity) then "-v" else ""} \
      ~{if (arg_number_use) then "-j" else ""} \
      ~{if defined(unitig_input_file) then ("--input " +  '"' + unitig_input_file + '"') else ""}
  >>>
  parameter_meta {
    increase_logging_verbosity: "[ --verbose ]      Increase logging verbosity"
    arg_number_use: "[ --threads ] arg  Number of consensus threads to use"
    unitig_input_file: "Unitig input file"
    var_3: ""
  }
  output {
    File out_stdout = stdout()
  }
}