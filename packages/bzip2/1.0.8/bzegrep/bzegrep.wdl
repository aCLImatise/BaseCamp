version 1.0

task Bzegrep {
  input {
    String? grep_options
    String pattern
    String? files
  }
  command <<<
    bzegrep \
      ~{grep_options} \
      ~{pattern} \
      ~{files}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bzip2:1.0.8"
  }
  parameter_meta {
    grep_options: ""
    pattern: ""
    files: ""
  }
  output {
    File out_stdout = stdout()
  }
}