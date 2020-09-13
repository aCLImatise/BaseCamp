version 1.0

task DumpFilepy {
  input {
    File? input_file
  }
  command <<<
    dump_file_py \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""}
  >>>
  parameter_meta {
    input_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}