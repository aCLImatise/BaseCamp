version 1.0

task Qorts {
  input {
    String formatting_dot
    String identifiers_dot
    String orphan_dot
    String merchantability
    String citation_dot
  }
  command <<<
    qorts \
      ~{formatting_dot} \
      ~{identifiers_dot} \
      ~{orphan_dot} \
      ~{merchantability} \
      ~{citation_dot}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    formatting_dot: "NOTE: if you run into OutOfMemoryExceptions, "
    identifiers_dot: "For more info, use:"
    orphan_dot: "For more info, use:"
    merchantability: "or fitness for any particular purpose."
    citation_dot: "NOTE: This package includes (internally) the sam-1.113.jar "
  }
  output {
    File out_stdout = stdout()
  }
}