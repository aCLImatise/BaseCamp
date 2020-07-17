version 1.0

task AktRelatives {
  input {
    Boolean? km_in
    Boolean? its
    Boolean? graph_out
    Boolean? prefix
  }
  command <<<
    akt relatives \
      ~{true="--kmin" false="" km_in} \
      ~{true="--its" false="" its} \
      ~{true="--graphout" false="" graph_out} \
      ~{true="--prefix" false="" prefix}
  >>>
  parameter_meta {
    km_in: ":                     threshold for relatedness (0.05)"
    its: ":                      number of iterations to find unrelated (10)"
    graph_out: ":         if present output pedigree graph files"
    prefix: ":                   output file prefix (out)"
  }
}