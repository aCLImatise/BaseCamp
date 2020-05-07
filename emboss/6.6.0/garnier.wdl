version 1.0

task Garnier {
  input {
    String rRFormat
  }
  command <<<
    garnier \
      ~{if defined(rRFormat) then ("-rformat " +  '"' + rRFormat + '"') else ""}
  >>>
}