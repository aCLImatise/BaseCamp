version 1.0

task FalconcVersion {
  input {
    Boolean? help_syntax
  }
  command <<<
    falconc version \
      ~{if (help_syntax) then "--help-syntax" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
  }
  output {
    File out_stdout = stdout()
  }
}