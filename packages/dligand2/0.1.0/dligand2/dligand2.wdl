version 1.0

task Dligand2 {
  input {
    Int? s
    Boolean? v
  }
  command <<<
    dligand2 \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dligand2:0.1.0--hc9558a2_0"
  }
  parameter_meta {
    s: ""
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}