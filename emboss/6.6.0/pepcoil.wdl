version 1.0

task Pepcoil {
  input {
    Boolean windowWindow
    String rRFormat
  }
  command <<<
    pepcoil \
      ~{true="-window" false="" windowWindow} \
      ~{if defined(rRFormat) then ("-rformat " +  '"' + rRFormat + '"') else ""}
  >>>
}