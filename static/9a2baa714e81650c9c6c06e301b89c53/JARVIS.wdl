version 1.0

task JARVIS {
  input {
    Boolean? force
    Boolean? verbose
    Boolean? estimation
    Boolean? show_levels
    Boolean? estimate
    Boolean? compression_level_integerdefault
    Boolean? size_context_selection
  }
  command <<<
    JARVIS \
      ~{if (force) then "--force" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (estimation) then "--estimation" else ""} \
      ~{if (show_levels) then "--show-levels" else ""} \
      ~{if (estimate) then "--estimate" else ""} \
      ~{if (compression_level_integerdefault) then "-l" else ""} \
      ~{if (size_context_selection) then "-z" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    force: "force mode. Overwrites old files."
    verbose: "verbose mode (more information)."
    estimation: "creates [sequence].info with complexity profile."
    show_levels: "show pre-computed compression levels (configured)."
    estimate: "it creates a file with the extension \\\".iae\\\" with the\\nrespective information content. If the file is FASTA or\\nFASTQ it will only use the \\\"ACGT\\\" (genomic) sequence."
    compression_level_integerdefault: "[NUMBER],  --level [NUMBER]\\nCompression level (integer).\\nDefault level: 1.\\nIt defines compressibility in balance with computational\\nresources (RAM & time). Use -s for levels perception."
    size_context_selection: "[NUMBER],  --selection [NUMBER]\\nSize of the context selection model (integer).\\nDefault context selection: 12."
  }
  output {
    File out_stdout = stdout()
  }
}