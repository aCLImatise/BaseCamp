version 1.0

task MetileneInput.pl {
  input {
    Boolean in2In2
    Boolean outOut
    Boolean h1H1
    Boolean h2H2
    Boolean bB
  }
  command <<<
    metilene_input.pl \
      ~{true="--in2" false="" in2In2} \
      ~{true="--out" false="" outOut} \
      ~{true="--h1" false="" h1H1} \
      ~{true="--h2" false="" h2H2} \
      ~{true="-b" false="" bB}
  >>>
}