version 1.0

task GuppyToJson {
  input {
    Boolean? help
    String to_json
    String place_file
    String? s
  }
  command <<<
    guppy to_json \
      ~{to_json} \
      ~{place_file} \
      ~{s} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sepp:4.5.1--py37_0"
  }
  parameter_meta {
    help: "Display this list of options"
    to_json: ""
    place_file: ""
    s: ""
  }
  output {
    File out_stdout = stdout()
  }
}