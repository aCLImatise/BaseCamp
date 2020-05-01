version 1.0

task Printafm {
  input {
    String? fontnameFontname
  }
  command <<<
    printafm \
      ~{fontnameFontname}
  >>>
}