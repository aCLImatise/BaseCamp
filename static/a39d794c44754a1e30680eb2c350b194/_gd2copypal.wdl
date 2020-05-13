version 1.0

task _gd2copypal {
  input {
    String? gd2copypalGd2copypal
    String? palettePaletteFileGd2
    File? filenameFilenameGd2
  }
  command <<<
    _gd2copypal \
      ~{gd2copypalGd2copypal} \
      ~{palettePaletteFileGd2} \
      ~{filenameFilenameGd2}
  >>>
}