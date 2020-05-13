version 1.0

task Diffseq {
  input {
    Boolean wordWordSize
    String rRFormat
  }
  command <<<
    diffseq \
      ~{true="-wordsize" false="" wordWordSize} \
      ~{if defined(rRFormat) then ("-rformat " +  '"' + rRFormat + '"') else ""}
  >>>
}