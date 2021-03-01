version 1.0

task FioDistrib {
  input {
    Boolean? no_rs
  }
  command <<<
    fio distrib \
      ~{if (no_rs) then "--no-rs" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fiona:1.8.6"
  }
  parameter_meta {
    no_rs: "Use RS (0x1E) as a prefix for individual texts in a sequence\\nas per http://tools.ietf.org/html/draft-ietf-json-text-\\nsequence-13 (default is False)."
  }
  output {
    File out_stdout = stdout()
  }
}