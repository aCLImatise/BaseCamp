version 1.0

task FaRc {
  input {
    Boolean? keep_name
    Boolean? keep_case
    Boolean? just_reverse
    Boolean? just_complement
    String in_dot_fa
    String out_dot_fa
  }
  command <<<
    faRc \
      ~{in_dot_fa} \
      ~{out_dot_fa} \
      ~{true="-keepName" false="" keep_name} \
      ~{true="-keepCase" false="" keep_case} \
      ~{true="-justReverse" false="" just_reverse} \
      ~{true="-justComplement" false="" just_complement}
  >>>
  parameter_meta {
    keep_name: "- keep name identical (don't prepend RC)"
    keep_case: "- works well for ACGTUN in either case. bizarre for other letters. without it bases are turned to lower, all else to n's"
    just_reverse: "- prepends R unless asked to keep name"
    just_complement: "- prepends C unless asked to keep name (cannot appear together with -justReverse)"
    in_dot_fa: ""
    out_dot_fa: ""
  }
}