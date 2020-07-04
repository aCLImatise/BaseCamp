version 1.0

task CardTrickUpdate {
  input {
    Boolean? v
    Boolean? man
    String card_trick
  }
  command <<<
    card-trick update \
      ~{card_trick} \
      ~{true="-v" false="" v} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    v: ""
    man: ""
    card_trick: ""
  }
}