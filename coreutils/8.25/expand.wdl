version 1.0

task Expand {
  input {
    Boolean? initial
    String? option
  }
  command <<<
    expand \
      ~{option} \
      ~{true="--initial" false="" initial}
  >>>
  parameter_meta {
    initial: "do not convert tabs after non blanks"
    option: ""
  }
}