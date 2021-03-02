version 1.0

task FioInsp {
  input {
    Boolean? ipython
    String src_path
  }
  command <<<
    fio insp \
      ~{src_path} \
      ~{if (ipython) then "--ipython" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fiona:1.8.6"
  }
  parameter_meta {
    ipython: "Use IPython as interpreter."
    src_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}