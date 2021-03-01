version 1.0

task Vcfcreatemulti {
  input {
    File? var_file
  }
  command <<<
    vcfcreatemulti \
      ~{var_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}