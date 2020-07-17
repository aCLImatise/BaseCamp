version 1.0

task Recoder {
  input {
    Boolean? enzymes
  }
  command <<<
    recoder \
      ~{true="-enzymes" false="" enzymes}
  >>>
  parameter_meta {
    enzymes: "string     [all] Comma separated enzyme list (Any string)"
  }
}