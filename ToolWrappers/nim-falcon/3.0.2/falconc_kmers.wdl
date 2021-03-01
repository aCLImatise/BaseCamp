version 1.0

task FalconcKmers {
  input {
    Boolean? help_syntax
    Boolean? _intdummy_int
    Boolean? stringdummy_string_set
    String km_ers
  }
  command <<<
    falconc kmers \
      ~{km_ers} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_intdummy_int) then "-d" else ""} \
      ~{if (stringdummy_string_set) then "-s" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nim-falcon:3.0.2--h1341992_0"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _intdummy_int: "=, --int-dummy=     int     42       set int_dummy"
    stringdummy_string_set: "=, --string-dummy=  string  \\\"hello\\\"  set string_dummy"
    km_ers: ""
  }
  output {
    File out_stdout = stdout()
  }
}