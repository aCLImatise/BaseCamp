version 1.0

task Carna.pl {
  input {
    Boolean argsArgs
    String? inputInputFa
  }
  command <<<
    carna.pl \
      ~{inputInputFa} \
      ~{true="--args" false="" argsArgs}
  >>>
}