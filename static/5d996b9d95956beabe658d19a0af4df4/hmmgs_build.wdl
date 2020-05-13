version 1.0

task HmmgsBuild {
  input {
    String? readReadFile
    String? bloomBloomOut
    String? kmKmErSize
    String? bloomsBloomsIzelog2
    String? cutCutOff
    String? hashHashCount
    String? bitsetsizelog2Bitsetsizelog2
  }
  command <<<
    hmmgs build \
      ~{readReadFile} \
      ~{bloomBloomOut} \
      ~{kmKmErSize} \
      ~{bloomsBloomsIzelog2} \
      ~{cutCutOff} \
      ~{hashHashCount} \
      ~{bitsetsizelog2Bitsetsizelog2}
  >>>
}