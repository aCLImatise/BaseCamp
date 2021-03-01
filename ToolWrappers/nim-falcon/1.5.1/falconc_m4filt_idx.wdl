version 1.0

task FalconcM4filtidx {
  input {
    Boolean? help_syntax
    Boolean? infn_string_required
  }
  command <<<
    falconc m4filt_idx \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (infn_string_required) then "-i" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    infn_string_required: "=, --in-fn=  string  REQUIRED  Path to .m4 file. Index filename will have\\n'.idx' appended.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}