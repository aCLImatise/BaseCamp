version 1.0

task MakeWebsiteFilePrefix {
  input {
    String? specSpecA
    String? specSpecB
    String? mouseMouseBed
    String? humanHumanBed
    String? mafMafDir
    String? prefixPrefix
  }
  command <<<
    makeWebsite file prefix \
      ~{specSpecA} \
      ~{specSpecB} \
      ~{mouseMouseBed} \
      ~{humanHumanBed} \
      ~{mafMafDir} \
      ~{prefixPrefix}
  >>>
}