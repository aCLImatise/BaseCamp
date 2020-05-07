version 1.0

task Mlocarna {
  input {
    String? fastFastAFile
  }
  command <<<
    mlocarna \
      ~{fastFastAFile}
  >>>
}