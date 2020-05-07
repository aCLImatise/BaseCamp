version 1.0

task _gdparttopng {
  input {
    String? gdGdPartToPng
    File? filenameFilenameGd
    File? filenameFilenamePng
    String? xX
    String? yY
    String? wW
    String? hH
  }
  command <<<
    _gdparttopng \
      ~{gdGdPartToPng} \
      ~{filenameFilenameGd} \
      ~{filenameFilenamePng} \
      ~{xX} \
      ~{yY} \
      ~{wW} \
      ~{hH}
  >>>
}