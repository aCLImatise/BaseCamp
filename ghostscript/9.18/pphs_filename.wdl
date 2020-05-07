version 1.0

task PphsFilename.pdf {
  input {
    Boolean dictDict
  }
  command <<<
    pphs filename.pdf \
      ~{true="--dict" false="" dictDict}
  >>>
}