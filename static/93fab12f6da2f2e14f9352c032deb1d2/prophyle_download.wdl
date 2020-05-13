version 1.0

task ProphyleDownload {
  input {
    String dD
    String lL
    Boolean fF
    Boolean cC
  }
  command <<<
    prophyle download \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="-F" false="" fF} \
      ~{true="-c" false="" cC}
  >>>
}