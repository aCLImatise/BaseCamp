version 1.0

task Vcfbreakmulti {
  input {
    File? file
  }
  command <<<
    vcfbreakmulti \
      ~{file}
  >>>
  parameter_meta {
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}