version 1.0

task _gd2togif {
  input {
    String? gd2togifGd2togif
    File? filenameFilenameGd2
    File? filenameFilenameGif
  }
  command <<<
    _gd2togif \
      ~{gd2togifGd2togif} \
      ~{filenameFilenameGd2} \
      ~{filenameFilenameGif}
  >>>
}