version 1.0

task PfbtopfaOutput.pfa {
  input {
    Boolean dictDict
    String? in1In1
  }
  command <<<
    pfbtopfa output.pfa \
      ~{in1In1} \
      ~{true="--dict" false="" dictDict}
  >>>
}