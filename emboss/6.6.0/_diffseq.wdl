version 1.0

task _diffseq {
  input {
    Boolean wordWordSize
    String rRFormat
  }
  command <<<
    _diffseq \
      ~{true="-wordsize" false="" wordWordSize} \
      ~{if defined(rRFormat) then ("-rformat " +  '"' + rRFormat + '"') else ""}
  >>>
}