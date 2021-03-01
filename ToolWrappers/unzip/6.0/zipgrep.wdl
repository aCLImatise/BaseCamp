version 1.0

task Zipgrep {
  input {
    String? egrep_options
    String pattern
    String zip_file
    String? members_dot_dot_dot
  }
  command <<<
    zipgrep \
      ~{egrep_options} \
      ~{pattern} \
      ~{zip_file} \
      ~{members_dot_dot_dot}
  >>>
  runtime {
    docker: "quay.io/biocontainers/unzip:6.0"
  }
  parameter_meta {
    egrep_options: ""
    pattern: ""
    zip_file: ""
    members_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}