version 1.0

task CreateChargeFile.pl {
  input {
    Boolean formatFormat
  }
  command <<<
    createChargeFile.pl \
      ~{true="--format" false="" formatFormat}
  >>>
}