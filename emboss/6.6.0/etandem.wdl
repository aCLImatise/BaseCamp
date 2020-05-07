version 1.0

task Etandem {
  input {
    Boolean minMinRepeat
    Boolean maxMaxRepeat
    String rRFormat
  }
  command <<<
    etandem \
      ~{true="-minrepeat" false="" minMinRepeat} \
      ~{true="-maxrepeat" false="" maxMaxRepeat} \
      ~{if defined(rRFormat) then ("-rformat " +  '"' + rRFormat + '"') else ""}
  >>>
}