version 1.0

task KinshipDecompose {
  input {
    Boolean? in
    Boolean? out
  }
  command <<<
    kinshipDecompose \
      ~{true="--in" false="" in} \
      ~{true="--out" false="" out}
  >>>
  parameter_meta {
    in: ": Input kinship file"
    out: ": Output prefix for autosomal kinship calculation"
  }
}