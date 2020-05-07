version 1.0

task _preg {
  input {
    String rRFormat
  }
  command <<<
    _preg \
      ~{if defined(rRFormat) then ("-rformat " +  '"' + rRFormat + '"') else ""}
  >>>
}