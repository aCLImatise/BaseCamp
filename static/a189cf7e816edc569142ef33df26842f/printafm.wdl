version 1.0

task Printafm {
  input {
    String fontname
  }
  command <<<
    printafm \
      ~{fontname}
  >>>
  parameter_meta {
    fontname: ""
  }
}