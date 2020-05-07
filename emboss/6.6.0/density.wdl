version 1.0

task Density {
  input {
    String rRFormat
  }
  command <<<
    density \
      ~{if defined(rRFormat) then ("-rformat " +  '"' + rRFormat + '"') else ""}
  >>>
}