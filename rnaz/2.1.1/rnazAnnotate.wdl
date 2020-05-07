version 1.0

task RnazAnnotate.pl {
  input {
    Boolean bedBed
    File? fileFile
  }
  command <<<
    rnazAnnotate.pl \
      ~{fileFile} \
      ~{true="--bed" false="" bedBed}
  >>>
}