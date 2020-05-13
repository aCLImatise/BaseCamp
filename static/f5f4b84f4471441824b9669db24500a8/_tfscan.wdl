version 1.0

task _tfscan {
  input {
    Boolean menuMenu
    Boolean mismatchMismatch
    String rRFormat
  }
  command <<<
    _tfscan \
      ~{true="-menu" false="" menuMenu} \
      ~{true="-mismatch" false="" mismatchMismatch} \
      ~{if defined(rRFormat) then ("-rformat " +  '"' + rRFormat + '"') else ""}
  >>>
}