version 1.0

task Bzcmp {
  input {
    String? cmp_options
    File? var_file
  }
  command <<<
    bzcmp \
      ~{cmp_options} \
      ~{var_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bzip2:1.0.8"
  }
  parameter_meta {
    cmp_options: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}