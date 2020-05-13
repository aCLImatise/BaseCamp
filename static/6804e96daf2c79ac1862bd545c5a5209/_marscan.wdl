version 1.0

task _marscan {
  input {
    String rRFormat
  }
  command <<<
    _marscan \
      ~{if defined(rRFormat) then ("-rformat " +  '"' + rRFormat + '"') else ""}
  >>>
}