version 1.0

task HubPublicCheck {
  input {
    Boolean udcUdcDir
    String addAddHub
    String? tablenameTablename
  }
  command <<<
    hubPublicCheck \
      ~{tablenameTablename} \
      ~{true="-udcDir" false="" udcUdcDir} \
      ~{if defined(addAddHub) then ("-addHub " +  '"' + addAddHub + '"') else ""}
  >>>
}