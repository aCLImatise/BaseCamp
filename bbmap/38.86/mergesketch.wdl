version 1.0

task Mergesketch.sh {
  input {
    String list_dot
  }
  command <<<
    mergesketch.sh \
      ~{list_dot}
  >>>
  parameter_meta {
    list_dot: "in= is optional so wildcards may be used."
  }
}