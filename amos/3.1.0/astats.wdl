version 1.0

task Astats {
  input {
    File bank_path
  }
  command <<<
    astats \
      ~{bank_path}
  >>>
  parameter_meta {
    bank_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}