version 1.0

task _recoder {
  input {
    Boolean enzymesEnzymes
    String rRFormat
  }
  command <<<
    _recoder \
      ~{true="-enzymes" false="" enzymesEnzymes} \
      ~{if defined(rRFormat) then ("-rformat " +  '"' + rRFormat + '"') else ""}
  >>>
}