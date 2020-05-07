version 1.0

task MakeWebsiteSpecB {
  input {
    File? fileFile
    String? specSpecA
    String? specSpecB
    String? mouseMouseBed
    String? humanHumanBed
    String? mafMafDir
    String? prefixPrefix
  }
  command <<<
    makeWebsite specB \
      ~{fileFile} \
      ~{specSpecA} \
      ~{specSpecB} \
      ~{mouseMouseBed} \
      ~{humanHumanBed} \
      ~{mafMafDir} \
      ~{prefixPrefix}
  >>>
}