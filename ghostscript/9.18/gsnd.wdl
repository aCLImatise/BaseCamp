version 1.0

task Gsnd {
  input {
    Boolean dDNoPause
    Boolean gG
    String sSDevice
    File soutputfileSoutputfile
  }
  command <<<
    gsnd \
      ~{true="-dNOPAUSE" false="" dDNoPause} \
      ~{true="-g" false="" gG} \
      ~{if defined(sSDevice) then ("-sDEVICE " +  '"' + sSDevice + '"') else ""} \
      ~{if defined(soutputfileSoutputfile) then ("-sOutputFile " +  '"' + soutputfileSoutputfile + '"') else ""}
  >>>
}