version 1.0

task MakeWebsiteFileSpecAHumanBed {
  input {
    String? specSpecB
    String? mouseMouseBed
    String? humanHumanBed
    String? mafMafDir
    String? prefixPrefix
  }
  command <<<
    makeWebsite file specA human_bed \
      ~{specSpecB} \
      ~{mouseMouseBed} \
      ~{humanHumanBed} \
      ~{mafMafDir} \
      ~{prefixPrefix}
  >>>
}