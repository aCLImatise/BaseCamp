version 1.0

task Mglobenergy {
  input {
    Boolean vV
    String ffFf
    String? obObEnergy
    File? filenameFilename
  }
  command <<<
    mglobenergy \
      ~{obObEnergy} \
      ~{true="-v" false="" vV} \
      ~{if defined(ffFf) then ("-ff " +  '"' + ffFf + '"') else ""} \
      ~{filenameFilename}
  >>>
}