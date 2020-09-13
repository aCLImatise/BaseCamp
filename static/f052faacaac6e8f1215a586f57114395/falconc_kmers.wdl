version 1.0

task FalconcKmers {
  input {
    Boolean? help_syntax
    Boolean? _intdummy_int
    Boolean? _stringdummy_string
  }
  command <<<
    falconc kmers \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_intdummy_int) then "-d" else ""} \
      ~{if (_stringdummy_string) then "-s" else ""}
  >>>
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _intdummy_int: "=, --int-dummy=     int     42       set int_dummy"
    _stringdummy_string: "=, --string-dummy=  string  \\\"hello\\\"  set string_dummy"
  }
  output {
    File out_stdout = stdout()
  }
}