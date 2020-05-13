version 1.0

task Rblist {
  input {
    Boolean iI
    Boolean oO
    String protonProtonAte
    String deDeProtonAte
    String readRead
    String rotateRotate
    String verboseVerbose
    String? inputsInputsDFile
    String? outputsOutputsDFile
  }
  command <<<
    rblist \
      ~{inputsInputsDFile} \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{if defined(protonProtonAte) then ("- protonate " +  '"' + protonProtonAte + '"') else ""} \
      ~{if defined(deDeProtonAte) then ("- deprotonate " +  '"' + deDeProtonAte + '"') else ""} \
      ~{if defined(readRead) then ("- read " +  '"' + readRead + '"') else ""} \
      ~{if defined(rotateRotate) then ("- rotate " +  '"' + rotateRotate + '"') else ""} \
      ~{if defined(verboseVerbose) then ("- verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{outputsOutputsDFile}
  >>>
}