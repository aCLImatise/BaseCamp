version 1.0

task _fuzzpro {
  input {
    Boolean patternPattern
    String rRFormat
  }
  command <<<
    _fuzzpro \
      ~{true="-pattern" false="" patternPattern} \
      ~{if defined(rRFormat) then ("-rformat " +  '"' + rRFormat + '"') else ""}
  >>>
}