version 1.0

task CramDump {
  input {
    Boolean vV
    File? filenameFilenameCram
  }
  command <<<
    cram_dump \
      ~{filenameFilenameCram} \
      ~{true="-v" false="" vV}
  >>>
}