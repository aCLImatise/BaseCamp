version 1.0

task _fuzznuc {
  input {
    Boolean patternPattern
    String rRFormat
  }
  command <<<
    _fuzznuc \
      ~{true="-pattern" false="" patternPattern} \
      ~{if defined(rRFormat) then ("-rformat " +  '"' + rRFormat + '"') else ""}
  >>>
}