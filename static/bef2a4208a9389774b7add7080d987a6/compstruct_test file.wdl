version 1.0

task CompstructTestfile {
  input {
    Boolean? options
    String comp_struct
    File trusted_file
    File test_file
  }
  command <<<
    compstruct test_file \
      ~{comp_struct} \
      ~{trusted_file} \
      ~{test_file} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    options: ""
    comp_struct: ""
    trusted_file: ""
    test_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}