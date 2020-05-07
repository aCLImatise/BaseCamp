version 1.0

task _garnier {
  input {
    String rRFormat
  }
  command <<<
    _garnier \
      ~{if defined(rRFormat) then ("-rformat " +  '"' + rRFormat + '"') else ""}
  >>>
}