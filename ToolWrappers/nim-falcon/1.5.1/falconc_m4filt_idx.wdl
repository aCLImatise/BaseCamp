version 1.0

task FalconcM4filtidx {
  input {
    Boolean? help_syntax
    Boolean? _infn_string
  }
  command <<<
    falconc m4filt_idx \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_infn_string) then "-i" else ""}
  >>>
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _infn_string: "=, --in-fn=  string  REQUIRED  Path to .m4 file. Index filename will have\\n'.idx' appended.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}