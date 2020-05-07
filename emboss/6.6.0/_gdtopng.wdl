version 1.0

task _gdtopng {
  input {
    String? gdGdToPng
    File? filenameFilenameGd
    File? filenameFilenamePng
  }
  command <<<
    _gdtopng \
      ~{gdGdToPng} \
      ~{filenameFilenameGd} \
      ~{filenameFilenamePng}
  >>>
}