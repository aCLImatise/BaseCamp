version 1.0

task _gdcmpgif {
  input {
    String? gdcGdcMpgIf
    File? filenameFilenameGif
    File? filenameFilenameGif
  }
  command <<<
    _gdcmpgif \
      ~{gdcGdcMpgIf} \
      ~{filenameFilenameGif} \
      ~{filenameFilenameGif}
  >>>
}