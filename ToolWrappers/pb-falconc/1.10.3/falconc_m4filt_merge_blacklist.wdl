version 1.0

task FalconcM4filtmergeblacklist {
  input {
    Boolean? help_syntax
    Boolean? blistfofn_string_required
    Boolean? _outfn_string
    Int m_four_filt_merge_blacklist
  }
  command <<<
    falconc m4filt_merge_blacklist \
      ~{m_four_filt_merge_blacklist} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (blistfofn_string_required) then "-b" else ""} \
      ~{if (_outfn_string) then "-o" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pb-falconc:1.10.3--he513fc3_0"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    blistfofn_string_required: "=, --blistFofn=  string  REQUIRED  set blistFofn"
    _outfn_string: "=, --outFn=      string  REQUIRED  set outFn"
    m_four_filt_merge_blacklist: ""
  }
  output {
    File out_stdout = stdout()
  }
}