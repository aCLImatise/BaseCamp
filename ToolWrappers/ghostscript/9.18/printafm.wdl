version 1.0

task Printafm {
  input {
    String fontname
  }
  command <<<
    printafm \
      ~{fontname}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fontname: ""
  }
  output {
    File out_stdout = stdout()
  }
}