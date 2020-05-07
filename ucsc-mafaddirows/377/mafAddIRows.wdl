version 1.0

task MafAddIRows {
  input {
    String nNBeds
    Boolean addAddN
    Boolean addAddDash
    String? mafMafIn
    String? twoTwoBitFile
    String? mafMafOut
  }
  command <<<
    mafAddIRows \
      ~{mafMafIn} \
      ~{if defined(nNBeds) then ("-nBeds " +  '"' + nNBeds + '"') else ""} \
      ~{true="-addN" false="" addAddN} \
      ~{true="-addDash" false="" addAddDash} \
      ~{twoTwoBitFile} \
      ~{mafMafOut}
  >>>
}