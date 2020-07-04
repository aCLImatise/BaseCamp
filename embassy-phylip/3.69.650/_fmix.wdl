version 1.0

task _fmix {
  input {
    Boolean? weights
    Boolean? anc_file
    Boolean? mix_file
    Boolean? method
  }
  command <<<
    _fmix \
      ~{true="-weights" false="" weights} \
      ~{true="-ancfile" false="" anc_file} \
      ~{true="-mixfile" false="" mix_file} \
      ~{true="-method" false="" method}
  >>>
  parameter_meta {
    weights: "properties Weights file"
    anc_file: "properties Ancestral states file"
    mix_file: "properties Mixture file"
    method: "menu       [Wagner] Choose the method to use (Values: w (Wagner); c (Camin-Sokal); m (Mixed))"
  }
}