version 1.0

task Vcfflatten {
  input {
    File? var_file
  }
  command <<<
    vcfflatten \
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