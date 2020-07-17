version 1.0

task FznGecode {
  input {
    Boolean? mode
    Boolean? optional_false_true
    Boolean? string_default_none
  }
  command <<<
    fzn-gecode \
      ~{true="-mode" false="" mode} \
      ~{true="-s" false="" optional_false_true} \
      ~{true="-o" false="" string_default_none}
  >>>
  parameter_meta {
    mode: "(solution, stat, gist) default: solution how to execute script"
    optional_false_true: "(optional: false, 0, true, 1) default: false emit statistics"
    string_default_none: "(string) default: NONE file to send output to"
  }
}