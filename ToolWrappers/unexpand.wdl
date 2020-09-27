version 1.0

task Unexpand {
  input {
    Boolean? all
    Boolean? first_only
  }
  command <<<
    unexpand \
      ~{if (all) then "--all" else ""} \
      ~{if (first_only) then "--first-only" else ""}
  >>>
  parameter_meta {
    all: "convert all blanks, instead of just initial blanks"
    first_only: "convert only leading sequences of blanks (overrides -a)"
  }
  output {
    File out_stdout = stdout()
  }
}