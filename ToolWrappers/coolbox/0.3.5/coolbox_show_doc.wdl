version 1.0

task CoolboxShowDoc {
  input {
    String elem_str
  }
  command <<<
    coolbox show_doc \
      ~{elem_str}
  >>>
  runtime {
    docker: "quay.io/biocontainers/coolbox:0.3.5--py_0"
  }
  parameter_meta {
    elem_str: ""
  }
  output {
    File out_stdout = stdout()
  }
}