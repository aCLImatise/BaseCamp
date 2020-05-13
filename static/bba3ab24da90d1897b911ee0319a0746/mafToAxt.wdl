version 1.0

task MafToAxt {
  input {
    String stripStripDb
    String? inInMaf
    String? tTName
    String? qnameQname
    String? outputOutput
  }
  command <<<
    mafToAxt \
      ~{inInMaf} \
      ~{if defined(stripStripDb) then ("-stripDb " +  '"' + stripStripDb + '"') else ""} \
      ~{tTName} \
      ~{qnameQname} \
      ~{outputOutput}
  >>>
}