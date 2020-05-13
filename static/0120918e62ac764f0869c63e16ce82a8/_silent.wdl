version 1.0

task _silent {
  input {
    Boolean enzymesEnzymes
    String rRFormat
  }
  command <<<
    _silent \
      ~{true="-enzymes" false="" enzymesEnzymes} \
      ~{if defined(rRFormat) then ("-rformat " +  '"' + rRFormat + '"') else ""}
  >>>
}