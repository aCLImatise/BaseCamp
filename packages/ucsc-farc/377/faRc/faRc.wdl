version 1.0

task FaRc {
  input {
    Boolean? keep_name
    Boolean? keep_case
    Boolean? just_reverse
    Boolean? just_complement
    String in_dot_fa
  }
  command <<<
    faRc \
      ~{in_dot_fa} \
      ~{if (keep_name) then "-keepName" else ""} \
      ~{if (keep_case) then "-keepCase" else ""} \
      ~{if (just_reverse) then "-justReverse" else ""} \
      ~{if (just_complement) then "-justComplement" else ""}
  >>>
  parameter_meta {
    keep_name: "- keep name identical (don't prepend RC)"
    keep_case: "- works well for ACGTUN in either case. bizarre for other letters.\\nwithout it bases are turned to lower, all else to n's"
    just_reverse: "- prepends R unless asked to keep name"
    just_complement: "- prepends C unless asked to keep name\\n(cannot appear together with -justReverse)\\n"
    in_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}