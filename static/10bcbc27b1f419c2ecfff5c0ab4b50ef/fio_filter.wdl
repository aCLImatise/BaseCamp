version 1.0

task FioFilter {
  input {
    Boolean? no_rs
    String filter_expression
  }
  command <<<
    fio filter \
      ~{filter_expression} \
      ~{if (no_rs) then "--no-rs" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fiona:1.8.6"
  }
  parameter_meta {
    no_rs: "Use RS (0x1E) as a prefix for individual texts in a sequence\\nas per http://tools.ietf.org/html/draft-ietf-json-text-\\nsequence-13 (default is False)."
    filter_expression: ""
  }
  output {
    File out_stdout = stdout()
  }
}