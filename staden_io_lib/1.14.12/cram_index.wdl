version 1.0

task CramIndex {
  input {
    File? filenameFilenameCram
    File? filenameFilenameCramCraI
  }
  command <<<
    cram_index \
      ~{filenameFilenameCram} \
      ~{filenameFilenameCramCraI}
  >>>
}