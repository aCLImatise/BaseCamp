version 1.0

task PybelPostCommonsscaifraunhoferde {
  input {
    String py_bel
    String post
    File path
  }
  command <<<
    pybel post commons_scai_fraunhofer_de \
      ~{py_bel} \
      ~{post} \
      ~{path}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    py_bel: ""
    post: ""
    path: ""
  }
  output {
    File out_stdout = stdout()
  }
}