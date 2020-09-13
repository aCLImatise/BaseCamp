version 1.0

task PancakeStatus {
  input {
    String pan_file
  }
  command <<<
    pancake status \
      ~{pan_file}
  >>>
  parameter_meta {
    pan_file: "Name of PanCake Data Object File"
  }
  output {
    File out_stdout = stdout()
  }
}