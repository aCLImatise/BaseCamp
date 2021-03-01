version 1.0

task FioLs {
  input {
    Int? indent
    String var_input
  }
  command <<<
    fio ls \
      ~{var_input} \
      ~{if defined(indent) then ("--indent " +  '"' + indent + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fiona:1.8.6"
  }
  parameter_meta {
    indent: "Indentation level for JSON output"
    var_input: ""
  }
  output {
    File out_stdout = stdout()
  }
}