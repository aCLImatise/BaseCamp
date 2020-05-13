version 1.0

task ArbTextedit {
  input {
    File? filenameFilename
  }
  command <<<
    arb_textedit \
      ~{filenameFilename}
  >>>
}