version 1.0

task _gd2topng {
  input {
    String? gd2topngGd2topng
    File? filenameFilenameGd2
    File? filenameFilenamePng
    String? srcxSrcx
    String? srcSrcY
    String? widthWidth
    String? heightHeight
  }
  command <<<
    _gd2topng \
      ~{gd2topngGd2topng} \
      ~{filenameFilenameGd2} \
      ~{filenameFilenamePng} \
      ~{srcxSrcx} \
      ~{srcSrcY} \
      ~{widthWidth} \
      ~{heightHeight}
  >>>
}