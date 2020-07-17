version 1.0

task Unexpand {
  input {
    Boolean? all
    Boolean? first_only
    String? option
  }
  command <<<
    unexpand \
      ~{option} \
      ~{true="--all" false="" all} \
      ~{true="--first-only" false="" first_only}
  >>>
  parameter_meta {
    all: "convert all blanks, instead of just initial blanks"
    first_only: "convert only leading sequences of blanks (overrides -a)"
    option: ""
  }
}