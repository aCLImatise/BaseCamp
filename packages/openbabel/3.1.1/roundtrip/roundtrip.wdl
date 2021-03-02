version 1.0

task Roundtrip {
  input {
    Int file_one
    Int file_two
  }
  command <<<
    roundtrip \
      ~{file_one} \
      ~{file_two}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openbabel:3.1.1"
  }
  parameter_meta {
    file_one: ""
    file_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}