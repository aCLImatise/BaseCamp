version 1.0

task Gemma {
  input {
    Boolean? license
  }
  command <<<
    gemma \
      ~{if (license) then "-license" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gemma:0.98.3--hb4ccc14_0"
  }
  parameter_meta {
    license: "show license information"
  }
  output {
    File out_stdout = stdout()
  }
}