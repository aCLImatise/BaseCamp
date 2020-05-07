version 1.0

task Preg {
  input {
    String rRFormat
  }
  command <<<
    preg \
      ~{if defined(rRFormat) then ("-rformat " +  '"' + rRFormat + '"') else ""}
  >>>
}