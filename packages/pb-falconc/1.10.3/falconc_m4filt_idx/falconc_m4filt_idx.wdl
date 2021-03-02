version 1.0

task FalconcM4filtidx {
  input {
    Boolean? help_syntax
    Boolean? infn_string_required
    Int m_four_filt_idx
  }
  command <<<
    falconc m4filt_idx \
      ~{m_four_filt_idx} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (infn_string_required) then "-i" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pb-falconc:1.10.3--he513fc3_0"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    infn_string_required: "=, --in-fn=  string  REQUIRED  Path to .m4 file. Index filename will have\\n'.idx' appended.\\n"
    m_four_filt_idx: ""
  }
  output {
    File out_stdout = stdout()
  }
}