version 1.0

task VisualizeRnapy {
  input {
    Boolean? pseudo_knots
    String? chains
    String? pdb_secondary_structure
    File? pdb_annotation_tool
    Boolean? pdb_allow_www_query
    Boolean? verbose
    Boolean? debug
    Boolean? commaseperated_list_logger_names_logged
    Boolean? keep_length_one_stems
    String rna
  }
  command <<<
    visualize_rna_py \
      ~{rna} \
      ~{if (pseudo_knots) then "--pseudoknots" else ""} \
      ~{if defined(chains) then ("--chains " +  '"' + chains + '"') else ""} \
      ~{if defined(pdb_secondary_structure) then ("--pdb-secondary-structure " +  '"' + pdb_secondary_structure + '"') else ""} \
      ~{if defined(pdb_annotation_tool) then ("--pdb-annotation-tool " +  '"' + pdb_annotation_tool + '"') else ""} \
      ~{if (pdb_allow_www_query) then "--pdb-allow-www-query" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (commaseperated_list_logger_names_logged) then "-q" else ""} \
      ~{if (keep_length_one_stems) then "--keep-length-one-stems" else ""}
  >>>
  parameter_meta {
    pseudo_knots: "Allow pseudoknots when extracting the structure from\\nPDB files."
    chains: "When reading pdb-files: Only extract the given\\nchain(s). Comma-seperated"
    pdb_secondary_structure: "When reading a single chain from a pdb-files: Enforce\\nthe secondary structure given as dotbracket string.\\n(This only works, if --chain is given!)"
    pdb_annotation_tool: "What program to use for detecting basepairs in PDB/\\nMMCIF structures. This commandline option overrides\\nthe value in the config file (if present).If this is\\nnot present and no config-file is given, we try to\\ndetect the installed programs."
    pdb_allow_www_query: "Usually, if modified residues/ ligand with an unknown\\n3-letter code are encountered in PDB files, they are\\nremoved from the chain and a log message of severity\\nINFO is issued. With this option, we first try to\\nquery the PDBeChem database for the 3-letter code, to\\nsee whether or not it is a modified residue that can\\nbe converted to its standard parent and should be part\\nof the chain."
    verbose: "Show verbose output (Output logged at level\\nlogging.INFO)"
    debug: "[DEBUG]       A comma-seperated list of logger names for which debug\\noutput will be activated.WARNING: If you misspell the\\nlogger name, this argument will be ignored"
    commaseperated_list_logger_names_logged: "[QUIET], --quiet [QUIET]\\nA comma-seperated list of logger names for which only\\nmessages logged at the level 'CRITICAL' will be\\nshown.Use this without arguments if everything should\\nbe quiet.\\n"
    keep_length_one_stems: ""
    rna: "One or more files containing one or more RNAs each.\\nSupported Filetypes are: pdb files, forgi cg files"
  }
  output {
    File out_stdout = stdout()
  }
}