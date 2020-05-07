version 1.0

task GffutilsCliSanitize {
  input {
    String ensuresEnsures
    String addsAdds
    Boolean inInMemory
    Boolean inInPlace
    File? filenameFilename
  }
  command <<<
    gffutils-cli sanitize \
      ~{filenameFilename} \
      ~{if defined(ensuresEnsures) then ("- Ensures " +  '"' + ensuresEnsures + '"') else ""} \
      ~{if defined(addsAdds) then ("- Adds " +  '"' + addsAdds + '"') else ""} \
      ~{true="--in-memory" false="" inInMemory} \
      ~{true="--in-place" false="" inInPlace}
  >>>
}