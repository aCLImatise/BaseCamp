version 1.0

task _dreg {
  input {
    String rRFormat
  }
  command <<<
    _dreg \
      ~{if defined(rRFormat) then ("-rformat " +  '"' + rRFormat + '"') else ""}
  >>>
}