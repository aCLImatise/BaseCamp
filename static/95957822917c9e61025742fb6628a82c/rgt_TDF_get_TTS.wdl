version 1.0

task RgtTDFGetTTS {
  input {
    Boolean iI
    Boolean ttsTts
    Boolean rR
    Boolean organismOrganism
    Boolean lL
    Boolean eE
    Boolean cC
    Boolean frFr
    Boolean fmFm
    Boolean ofOf
    Boolean mfMf
    Boolean rmRm
  }
  command <<<
    rgt-TDF get_TTS \
      ~{true="-i" false="" iI} \
      ~{true="-tts" false="" ttsTts} \
      ~{true="-r" false="" rR} \
      ~{true="-organism" false="" organismOrganism} \
      ~{true="-l" false="" lL} \
      ~{true="-e" false="" eE} \
      ~{true="-c" false="" cC} \
      ~{true="-fr" false="" frFr} \
      ~{true="-fm" false="" fmFm} \
      ~{true="-of" false="" ofOf} \
      ~{true="-mf" false="" mfMf} \
      ~{true="-rm" false="" rmRm}
  >>>
}