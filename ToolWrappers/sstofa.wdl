version 1.0

task Sstofa {
  input {
    File sec_struct_file
  }
  command <<<
    sstofa \
      ~{sec_struct_file}
  >>>
  parameter_meta {
    sec_struct_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}