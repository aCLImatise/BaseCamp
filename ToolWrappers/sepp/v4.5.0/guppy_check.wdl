version 1.0

task GuppyCheck {
  input {
    Boolean? help
    String check
    String place_file
    String? s
  }
  command <<<
    guppy check \
      ~{check} \
      ~{place_file} \
      ~{s} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sepp:v4.5.0--py37_0"
  }
  parameter_meta {
    help: "Display this list of options"
    check: ""
    place_file: ""
    s: ""
  }
  output {
    File out_stdout = stdout()
  }
}