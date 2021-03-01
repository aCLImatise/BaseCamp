version 1.0

task IPMachpy {
  input {
    File? input_file_name
  }
  command <<<
    IPMach_py \
      ~{if defined(input_file_name) then ("-i " +  '"' + input_file_name + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file_name: "Input file name"
  }
  output {
    File out_stdout = stdout()
  }
}