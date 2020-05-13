version 1.0

task _tcode {
  input {
    Boolean windowWindow
    String rRFormat
  }
  command <<<
    _tcode \
      ~{true="-window" false="" windowWindow} \
      ~{if defined(rRFormat) then ("-rformat " +  '"' + rRFormat + '"') else ""}
  >>>
}