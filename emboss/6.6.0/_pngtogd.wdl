version 1.0

task _pngtogd {
  input {
    String? pngPngToGd
    File? filenameFilenamePng
    File? filenameFilenameGd
  }
  command <<<
    _pngtogd \
      ~{pngPngToGd} \
      ~{filenameFilenamePng} \
      ~{filenameFilenameGd}
  >>>
}