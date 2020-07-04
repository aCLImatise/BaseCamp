version 1.0

task CardTrick {
  input {
    Boolean? man
    Boolean? v
  }
  command <<<
    card-trick \
      ~{true="--man" false="" man} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    man: "Additional information"
    v: ""
  }
}