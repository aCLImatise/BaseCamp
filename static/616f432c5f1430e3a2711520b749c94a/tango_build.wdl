version 1.0

task TangoBuild {
  input {
    String dD
    String pP
  }
  command <<<
    tango build \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""}
  >>>
}