version 1.0

task Fuzznuc {
  input {
    Boolean patternPattern
    String rRFormat
  }
  command <<<
    fuzznuc \
      ~{true="-pattern" false="" patternPattern} \
      ~{if defined(rRFormat) then ("-rformat " +  '"' + rRFormat + '"') else ""}
  >>>
}