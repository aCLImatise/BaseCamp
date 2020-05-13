version 1.0

task Eproxy {
  input {
    Boolean aliasAlias
    Boolean pipePipe
  }
  command <<<
    eproxy \
      ~{true="-alias" false="" aliasAlias} \
      ~{true="-pipe" false="" pipePipe}
  >>>
}