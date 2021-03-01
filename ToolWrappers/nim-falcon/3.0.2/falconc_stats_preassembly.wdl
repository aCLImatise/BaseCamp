version 1.0

task FalconcStatspreassembly {
  input {
    Boolean? help_syntax
    Boolean? _rawreadsrdbfn_string
    Boolean? preadsrdbfn_string_required
    Boolean? _genomelength_int
    Boolean? _cutofflength_int
    String stats_pre_assembly
  }
  command <<<
    falconc stats_preassembly \
      ~{stats_pre_assembly} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_rawreadsrdbfn_string) then "-r" else ""} \
      ~{if (preadsrdbfn_string_required) then "-p" else ""} \
      ~{if (_genomelength_int) then "-g" else ""} \
      ~{if (_cutofflength_int) then "-c" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nim-falcon:3.0.2--h1341992_0"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _rawreadsrdbfn_string: "=, --rawreads-rdb-fn=  string  REQUIRED  Path to the raw reads RaptorDB."
    preadsrdbfn_string_required: "=, --preads-rdb-fn=    string  REQUIRED  Path to the preads (error-corrected\\nreads) RaptorDB."
    _genomelength_int: "=, --genome-length=    int32   REQUIRED  Length of the genome."
    _cutofflength_int: "=, --cutoff-length=    int32   REQUIRED  Length cutoff used for assembly."
    stats_pre_assembly: ""
  }
  output {
    File out_stdout = stdout()
  }
}