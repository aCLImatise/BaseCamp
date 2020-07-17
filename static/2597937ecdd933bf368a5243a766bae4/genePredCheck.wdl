version 1.0

task GenePredCheck {
  input {
    String var_if
    File file_tbl
    String is
    String an
    String existing
    File file
  }
  command <<<
    genePredCheck \
      ~{var_if} \
      ~{file_tbl} \
      ~{is} \
      ~{an} \
      ~{existing} \
      ~{file}
  >>>
  parameter_meta {
    var_if: ""
    file_tbl: ""
    is: ""
    an: ""
    existing: ""
    file: ""
  }
}