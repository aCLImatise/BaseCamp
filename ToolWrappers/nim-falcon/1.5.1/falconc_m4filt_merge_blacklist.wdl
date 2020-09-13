version 1.0

task FalconcM4filtmergeblacklist {
  input {
    Boolean? help_syntax
    Boolean? _blistfofn_string
    Boolean? _outfn_string
  }
  command <<<
    falconc m4filt_merge_blacklist \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_blistfofn_string) then "-b" else ""} \
      ~{if (_outfn_string) then "-o" else ""}
  >>>
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _blistfofn_string: "=, --blistFofn=  string  REQUIRED  set blistFofn"
    _outfn_string: "=, --outFn=      string  REQUIRED  set outFn"
  }
  output {
    File out_stdout = stdout()
  }
}