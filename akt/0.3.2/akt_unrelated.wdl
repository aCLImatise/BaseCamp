version 1.0

task AktUnrelated {
  input {
    Boolean? km_in
    Boolean? its
  }
  command <<<
    akt unrelated \
      ~{true="--kmin" false="" km_in} \
      ~{true="--its" false="" its}
  >>>
  parameter_meta {
    km_in: ":                     threshold for relatedness (0.025)"
    its: ":                      number of iterations to find unrelated (10)"
  }
}