version 1.0

task Marscan {
  input {
    String rRFormat
  }
  command <<<
    marscan \
      ~{if defined(rRFormat) then ("-rformat " +  '"' + rRFormat + '"') else ""}
  >>>
}