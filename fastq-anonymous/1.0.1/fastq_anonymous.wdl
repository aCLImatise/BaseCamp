version 1.0

task FastqAnonymous {
  input {
    Boolean? mask
    Boolean? v
  }
  command <<<
    fastq-anonymous \
      ~{true="--mask" false="" mask} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    mask: "Mask all nucleotides using N"
    v: ""
  }
}