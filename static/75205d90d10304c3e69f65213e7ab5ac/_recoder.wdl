version 1.0

task _recoder {
  input {
    Boolean? enzymes
  }
  command <<<
    _recoder \
      ~{true="-enzymes" false="" enzymes}
  >>>
  parameter_meta {
    enzymes: "string     [all] Comma separated enzyme list (Any string)"
  }
}