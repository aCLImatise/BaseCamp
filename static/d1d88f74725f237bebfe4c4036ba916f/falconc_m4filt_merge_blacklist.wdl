version 1.0

task FalconcM4filtmergeblacklist {
  input {
    Boolean? help_syntax
    Boolean? blistfofn_string_required
    Boolean? _outfn_string
  }
  command <<<
    falconc m4filt_merge_blacklist \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (blistfofn_string_required) then "-b" else ""} \
      ~{if (_outfn_string) then "-o" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    blistfofn_string_required: "=, --blistFofn=  string  REQUIRED  set blistFofn"
    _outfn_string: "=, --outFn=      string  REQUIRED  set outFn"
  }
  output {
    File out_stdout = stdout()
  }
}