version 1.0

task MakeWebsiteFileSpecASpecB {
  input {
    String? mouseMouseBed
    String? humanHumanBed
    String? mafMafDir
    String? prefixPrefix
  }
  command <<<
    makeWebsite file specA specB \
      ~{mouseMouseBed} \
      ~{humanHumanBed} \
      ~{mafMafDir} \
      ~{prefixPrefix}
  >>>
}