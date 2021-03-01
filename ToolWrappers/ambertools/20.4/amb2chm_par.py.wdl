version 1.0

task Amb2chmParpy {
  input {
    File? o
    File? the_input_file
    File? input_file_parameter
    Int? nat
  }
  command <<<
    amb2chm_par_py \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(the_input_file) then ("-i " +  '"' + the_input_file + '"') else ""} \
      ~{if defined(input_file_parameter) then ("-f " +  '"' + input_file_parameter + '"') else ""} \
      ~{if defined(nat) then ("--nat " +  '"' + nat + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    o: "[--nat use_new_attype]"
    the_input_file: "The input file"
    input_file_parameter: "The input file is a parameter file (1) or just contains file\\nnames (2) [default: 2]"
    nat: "Whether to perform atom type transfer [0 means no, 1 means\\nyes, default: 1]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_o = "${in_o}"
  }
}