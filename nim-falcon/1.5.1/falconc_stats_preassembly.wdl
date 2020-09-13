version 1.0

task FalconcStatspreassembly {
  input {
    Boolean? help_syntax
    Boolean? _rawreadsrdbfn_string
    Boolean? _preadsrdbfn_string
    Boolean? _genomelength_int
    Boolean? _cutofflength_int
  }
  command <<<
    falconc stats_preassembly \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_rawreadsrdbfn_string) then "-r" else ""} \
      ~{if (_preadsrdbfn_string) then "-p" else ""} \
      ~{if (_genomelength_int) then "-g" else ""} \
      ~{if (_cutofflength_int) then "-c" else ""}
  >>>
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _rawreadsrdbfn_string: "=, --rawreads-rdb-fn=  string  REQUIRED  Path to the raw reads RaptorDB."
    _preadsrdbfn_string: "=, --preads-rdb-fn=    string  REQUIRED  Path to the preads (error-corrected\\nreads) RaptorDB."
    _genomelength_int: "=, --genome-length=    int32   REQUIRED  Length of the genome."
    _cutofflength_int: "=, --cutoff-length=    int32   REQUIRED  Length cutoff used for assembly."
  }
  output {
    File out_stdout = stdout()
  }
}