version 1.0

task Filter {
  input {
    Boolean? no_header
  }
  command <<<
    filter \
      ~{if (no_header) then "--no-header" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_header: "input does not contain a header line"
  }
  output {
    File out_stdout = stdout()
  }
}