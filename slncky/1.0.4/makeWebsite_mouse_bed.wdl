version 1.0

task MakeWebsiteMouseBed {
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
    makeWebsite mouse_bed \
      ~{fileFile} \
      ~{specSpecA} \
      ~{specSpecB} \
      ~{mouseMouseBed} \
      ~{humanHumanBed} \
      ~{mafMafDir} \
      ~{prefixPrefix}
  >>>
}