version 1.0

task Gt {
  input {
    Boolean? enter_interactive_mode
    Boolean? suppress_warnings
    Boolean? test
    Boolean? seed
    String? version
  }
  command <<<
    gt \
      ~{if (enter_interactive_mode) then "-i" else ""} \
      ~{if (suppress_warnings) then "-q" else ""} \
      ~{if (test) then "-test" else ""} \
      ~{if (seed) then "-seed" else ""} \
      ~{if defined(version) then ("-version " +  '"' + version + '"') else ""}
  >>>
  parameter_meta {
    enter_interactive_mode: "enter interactive mode after executing 'tool' or 'script'"
    suppress_warnings: "suppress warnings"
    test: "perform unit tests and exit"
    seed: "set seed for random number generator manually.\\n0 generates a seed from current time and process id"
    version: "version information and exit"
  }
  output {
    File out_stdout = stdout()
  }
}