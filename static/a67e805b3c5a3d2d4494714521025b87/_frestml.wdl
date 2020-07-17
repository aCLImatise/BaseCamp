version 1.0

task _frestml {
  input {
    Boolean? weights
    Boolean? n_jumble
    Boolean? site_length
  }
  command <<<
    _frestml \
      ~{true="-weights" false="" weights} \
      ~{true="-njumble" false="" n_jumble} \
      ~{true="-sitelength" false="" site_length}
  >>>
  parameter_meta {
    weights: "properties Weights file"
    n_jumble: "integer    [0] Number of times to randomise (Integer 0 or more)"
    site_length: "integer    [6] Site length (Integer from 1 to 8)"
  }
}