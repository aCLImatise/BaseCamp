version 1.0

task 2ft {
  input {
    Boolean? translate_only_reverse
    Boolean? translate_only_strand
    Boolean? value_specifies_default
  }
  command <<<
    2ft \
      ~{true="-r" false="" translate_only_reverse} \
      ~{true="-s" false="" translate_only_strand} \
      ~{true="-W" false="" value_specifies_default}
  >>>
  parameter_meta {
    translate_only_reverse: ": translate only reverse (antisense) strand."
    translate_only_strand: ": translate only sense strand."
    value_specifies_default: "<value>: specifies the output width (default: 60)."
  }
}