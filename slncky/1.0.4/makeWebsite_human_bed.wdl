version 1.0

task MakeWebsiteHumanBed {
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
    makeWebsite human_bed \
      ~{fileFile} \
      ~{specSpecA} \
      ~{specSpecB} \
      ~{mouseMouseBed} \
      ~{humanHumanBed} \
      ~{mafMafDir} \
      ~{prefixPrefix}
  >>>
}