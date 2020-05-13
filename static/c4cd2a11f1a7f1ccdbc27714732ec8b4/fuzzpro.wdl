version 1.0

task Fuzzpro {
  input {
    Boolean patternPattern
    String rRFormat
  }
  command <<<
    fuzzpro \
      ~{true="-pattern" false="" patternPattern} \
      ~{if defined(rRFormat) then ("-rformat " +  '"' + rRFormat + '"') else ""}
  >>>
}