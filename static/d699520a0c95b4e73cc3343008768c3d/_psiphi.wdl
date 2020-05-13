version 1.0

task _psiphi {
  input {
    String rRFormat
  }
  command <<<
    _psiphi \
      ~{if defined(rRFormat) then ("-rformat " +  '"' + rRFormat + '"') else ""}
  >>>
}