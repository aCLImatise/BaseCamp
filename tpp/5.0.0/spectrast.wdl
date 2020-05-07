version 1.0

task Spectrast {
  input {
    Boolean vV
    Boolean qQ
    Boolean lL
    Boolean mM
    File? filenameFilename1
    File? filenameFilenameN
  }
  command <<<
    spectrast \
      ~{filenameFilename1} \
      ~{true="-V" false="" vV} \
      ~{true="-Q" false="" qQ} \
      ~{true="-L" false="" lL} \
      ~{true="-M" false="" mM} \
      ~{filenameFilenameN}
  >>>
}