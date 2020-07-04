version 1.0

task PslCheck {
  input {
    Boolean? quiet
    File file_tbl
  }
  command <<<
    pslCheck \
      ~{file_tbl} \
      ~{true="-quiet" false="" quiet}
  >>>
  parameter_meta {
    quiet: "- no write error message, just filter"
    file_tbl: ""
  }
}