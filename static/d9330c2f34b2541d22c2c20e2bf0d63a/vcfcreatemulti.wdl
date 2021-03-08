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
    docker: "quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0"
  }
  parameter_meta {
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}