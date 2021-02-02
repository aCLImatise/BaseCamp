version 1.0

task Pocheck {
  input {
    Boolean? _verbose_output
    Boolean? _debugging_output
    Boolean? options
  }
  command <<<
    pocheck \
      ~{if (_verbose_output) then "-v" else ""} \
      ~{if (_debugging_output) then "-d" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    _verbose_output: ": verbose output"
    _debugging_output: ": debugging output"
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}