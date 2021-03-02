version 1.0

task Mdocvalidate {
  input {
    String? format
    String mdoc
    String validate
  }
  command <<<
    mdoc_validate \
      ~{mdoc} \
      ~{validate} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    format: "The documentation FORMAT used within PATHS.  Valid\\nformats include:\\necma\\nIf no format provided, `ecma' is used."
    mdoc: ""
    validate: ""
  }
  output {
    File out_stdout = stdout()
  }
}