version 1.0

task _etandem {
  input {
    Boolean minMinRepeat
    Boolean maxMaxRepeat
    String rRFormat
  }
  command <<<
    _etandem \
      ~{true="-minrepeat" false="" minMinRepeat} \
      ~{true="-maxrepeat" false="" maxMaxRepeat} \
      ~{if defined(rRFormat) then ("-rformat " +  '"' + rRFormat + '"') else ""}
  >>>
}