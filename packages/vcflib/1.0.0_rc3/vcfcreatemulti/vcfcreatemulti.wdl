version 1.0

task Vcfcreatemulti {
  input {
    File? file
  }
  command <<<
    vcfcreatemulti \
      ~{file}
  >>>
  parameter_meta {
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}