version 1.0

task _pepcoil {
  input {
    Boolean windowWindow
    String rRFormat
  }
  command <<<
    _pepcoil \
      ~{true="-window" false="" windowWindow} \
      ~{if defined(rRFormat) then ("-rformat " +  '"' + rRFormat + '"') else ""}
  >>>
}