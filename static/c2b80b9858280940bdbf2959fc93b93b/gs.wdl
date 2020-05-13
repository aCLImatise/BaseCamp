version 1.0

task Gs {
  input {
    Boolean dDNoPause
    Boolean gG
    String sSDevice
    File soutputfileSoutputfile
  }
  command <<<
    gs \
      ~{true="-dNOPAUSE" false="" dDNoPause} \
      ~{true="-g" false="" gG} \
      ~{if defined(sSDevice) then ("-sDEVICE " +  '"' + sSDevice + '"') else ""} \
      ~{if defined(soutputfileSoutputfile) then ("-sOutputFile " +  '"' + soutputfileSoutputfile + '"') else ""}
  >>>
}