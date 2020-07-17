version 1.0

task _silent {
  input {
    Boolean? enzymes
  }
  command <<<
    _silent \
      ~{true="-enzymes" false="" enzymes}
  >>>
  parameter_meta {
    enzymes: "string     [all] Comma separated enzyme list (Any string)"
  }
}