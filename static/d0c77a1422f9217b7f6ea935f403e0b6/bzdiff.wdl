version 1.0

task Bzdiff {
  input {
    String? diff_options
    File? var_file
  }
  command <<<
    bzdiff \
      ~{diff_options} \
      ~{var_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bzip2:1.0.8"
  }
  parameter_meta {
    diff_options: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}