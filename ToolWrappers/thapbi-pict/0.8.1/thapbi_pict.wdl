version 1.0

task ThapbiPict {
  input {
    Boolean? v
  }
  command <<<
    thapbi_pict \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/thapbi-pict:0.8.1--pyhdfd78af_0"
  }
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}