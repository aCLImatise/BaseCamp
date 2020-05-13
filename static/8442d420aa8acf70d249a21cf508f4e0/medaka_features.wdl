version 1.0

task MedakaFeatures {
  input {
    String? bamBam
    String? outputOutput
  }
  command <<<
    medaka features \
      ~{bamBam} \
      ~{outputOutput}
  >>>
}