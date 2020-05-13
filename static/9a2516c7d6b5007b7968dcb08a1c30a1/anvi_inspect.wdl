version 1.0

task AnviInspect {
  input {
    String profileProfileDb
    String contigsContigsDb
    String splitSplitName
    Boolean hideHideOutlierSnVs
    String ipIpAddress
    Int portPortNumber
    Boolean serverServerOnly
    Boolean justJustDoIt
  }
  command <<<
    anvi-inspect \
      ~{if defined(profileProfileDb) then ("--profile-db " +  '"' + profileProfileDb + '"') else ""} \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(splitSplitName) then ("--split-name " +  '"' + splitSplitName + '"') else ""} \
      ~{true="--hide-outlier-SNVs" false="" hideHideOutlierSnVs} \
      ~{if defined(ipIpAddress) then ("--ip-address " +  '"' + ipIpAddress + '"') else ""} \
      ~{if defined(portPortNumber) then ("--port-number " +  '"' + portPortNumber + '"') else ""} \
      ~{true="--server-only" false="" serverServerOnly} \
      ~{true="--just-do-it" false="" justJustDoIt}
  >>>
}