version 1.0

task CramSize {
  input {
    File? filenameFilenameCram
  }
  command <<<
    cram_size \
      ~{filenameFilenameCram}
  >>>
}