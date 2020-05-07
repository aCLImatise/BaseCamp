version 1.0

task Translate {
  input {
    String? fastFastAFile
  }
  command <<<
    translate \
      ~{fastFastAFile}
  >>>
}