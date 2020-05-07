version 1.0

task Obenergy {
  input {
    Boolean vV
    String ffFf
    File? filenameFilename
  }
  command <<<
    obenergy \
      ~{filenameFilename} \
      ~{true="-v" false="" vV} \
      ~{if defined(ffFf) then ("-ff " +  '"' + ffFf + '"') else ""}
  >>>
}