version 1.0

task FalconcVersion {
  input {
    Boolean? help_syntax
    String version
  }
  command <<<
    falconc version \
      ~{version} \
      ~{if (help_syntax) then "--help-syntax" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nim-falcon:3.0.2--h1341992_0"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    version: ""
  }
  output {
    File out_stdout = stdout()
  }
}