version 1.0

task Dynalign {
  input {
    String? config
    File? file
  }
  command <<<
    dynalign \
      ~{config} \
      ~{file}
  >>>
  parameter_meta {
    config: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}