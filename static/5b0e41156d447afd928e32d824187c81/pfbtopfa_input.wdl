version 1.0

task PfbtopfaInput.pfb {
  input {
    Boolean dictDict
    String? in1In1
  }
  command <<<
    pfbtopfa input.pfb \
      ~{in1In1} \
      ~{true="--dict" false="" dictDict}
  >>>
}