version 1.0

task Silent {
  input {
    Boolean? enzymes
  }
  command <<<
    silent \
      ~{true="-enzymes" false="" enzymes}
  >>>
  parameter_meta {
    enzymes: "string     [all] Comma separated enzyme list (Any string)"
  }
}