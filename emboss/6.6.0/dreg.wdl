version 1.0

task Dreg {
  input {
    String rRFormat
  }
  command <<<
    dreg \
      ~{if defined(rRFormat) then ("-rformat " +  '"' + rRFormat + '"') else ""}
  >>>
}