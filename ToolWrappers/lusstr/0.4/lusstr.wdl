version 1.0

task Lusstr {
  input {
    Boolean? v
    String sub_cmd
  }
  command <<<
    lusstr \
      ~{sub_cmd} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/lusstr:0.4--py_0"
  }
  parameter_meta {
    v: ""
    sub_cmd: "annotate, format"
  }
  output {
    File out_stdout = stdout()
  }
}