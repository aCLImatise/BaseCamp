version 1.0

task JARVIS {
  input {
    Boolean? _versiondisplay_program
    Boolean? _forceforce_mode
    Boolean? _verboseverbose_mode
    Boolean? _estimationcreates_complexity
    Boolean? _showlevelsshow_precomputed
    Boolean? compression_level_integerdefault
    Boolean? cm
    Boolean? rm
    Boolean? size_context_selection
  }
  command <<<
    JARVIS \
      ~{if (_versiondisplay_program) then "-V" else ""} \
      ~{if (_forceforce_mode) then "-F" else ""} \
      ~{if (_verboseverbose_mode) then "-v" else ""} \
      ~{if (_estimationcreates_complexity) then "-e" else ""} \
      ~{if (_showlevelsshow_precomputed) then "-s" else ""} \
      ~{if (compression_level_integerdefault) then "-l" else ""} \
      ~{if (cm) then "-cm" else ""} \
      ~{if (rm) then "-rm" else ""} \
      ~{if (size_context_selection) then "-z" else ""}
  >>>
  parameter_meta {
    _versiondisplay_program: ",  --version\\nDisplay program and version information."
    _forceforce_mode: ",  --force\\nforce mode. Overwrites old files."
    _verboseverbose_mode: ",  --verbose\\nverbose mode (more information)."
    _estimationcreates_complexity: ",  --estimation\\ncreates [sequence].info with complexity profile."
    _showlevelsshow_precomputed: ",  --show-levels\\nshow pre-computed compression levels (configured)."
    compression_level_integerdefault: "[NUMBER],  --level [NUMBER]\\nCompression level (integer).\\nDefault level: 1.\\nIt defines compressibility in balance with computational\\nresources (RAM & time). Use -s for levels perception."
    cm: "[NB_C]:[NB_D]:[NB_I]:[NB_G]/[NB_S]:[NB_E]:[NB_I]:[NB_A]"
    rm: "[NB_R]:[NB_C]:[NB_A]:[NB_B]:[NB_L]:[NB_G]:[NB_I]"
    size_context_selection: "[NUMBER],  --selection [NUMBER]\\nSize of the context selection model (integer).\\nDefault context selection: 12."
  }
  output {
    File out_stdout = stdout()
  }
}