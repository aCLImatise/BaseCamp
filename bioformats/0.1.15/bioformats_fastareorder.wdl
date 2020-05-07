version 1.0

task BioformatsFastareorder {
  input {
    Boolean ignoreIgnoreMissing
    String? fastFastA
    String? orderOrderFile
    String? outputOutput
  }
  command <<<
    bioformats fastareorder \
      ~{fastFastA} \
      ~{true="--ignore_missing" false="" ignoreIgnoreMissing} \
      ~{orderOrderFile} \
      ~{outputOutput}
  >>>
}