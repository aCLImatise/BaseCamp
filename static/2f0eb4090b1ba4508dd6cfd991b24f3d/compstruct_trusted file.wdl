version 1.0

task CompstructTrustedfile {
  input {
    Boolean? options
    File test_file
  }
  command <<<
    compstruct trusted_file \
      ~{test_file} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    options: ""
    test_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}