version 1.0

task DescribeCgpy {
  input {
    Boolean? keep_length_one_stems
    File? csv
    String? keys
    Int? angles
    Int? distances
    Boolean? per_ml
    File? mode
    Boolean? pseudo_knots
    String? chains
    String? pdb_secondary_structure
    File? pdb_annotation_tool
    Boolean? pdb_allow_www_query
    Boolean? verbose
    Boolean? debug
    Boolean? commaseperated_list_logger
    String rna
  }
  command <<<
    describe_cg_py \
      ~{rna} \
      ~{if (keep_length_one_stems) then "--keep-length-one-stems" else ""} \
      ~{if defined(csv) then ("--csv " +  '"' + csv + '"') else ""} \
      ~{if defined(keys) then ("--keys " +  '"' + keys + '"') else ""} \
      ~{if defined(angles) then ("--angles " +  '"' + angles + '"') else ""} \
      ~{if defined(distances) then ("--distances " +  '"' + distances + '"') else ""} \
      ~{if (per_ml) then "--per-ml" else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if (pseudo_knots) then "--pseudoknots" else ""} \
      ~{if defined(chains) then ("--chains " +  '"' + chains + '"') else ""} \
      ~{if defined(pdb_secondary_structure) then ("--pdb-secondary-structure " +  '"' + pdb_secondary_structure + '"') else ""} \
      ~{if defined(pdb_annotation_tool) then ("--pdb-annotation-tool " +  '"' + pdb_annotation_tool + '"') else ""} \
      ~{if (pdb_allow_www_query) then "--pdb-allow-www-query" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (commaseperated_list_logger) then "-q" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    keep_length_one_stems: "For all input formats except forgi bg/cg files, this\\ncontrolls whether stems of length one are dissolved to\\nunpaired regions (default) or kept (if this option is\\npresent). In the case of input in forgi-format, the\\nRNA from the file is not modified."
    csv: "Store dataframe under this filename. (Prints to stdout\\nif not given)"
    keys: "Only print the following properties. (A comma-\\nseperated list of column headers, e.g. rog_vres"
    angles: "Store the angles between the given pairs of elements.\\nComma-seperated element tuples, seperated by colons.\\n(e.g.: 's0,s1:s1,s2')"
    distances: "Store the distances between the given nucleotides.\\nComma-seperated nucleotide tuples, seperated by\\ncolons. (e.g.: '1,20:2,19')"
    per_ml: "Describe junction segments instead of the whole cg\\n(one entry per segment)"
    mode: "For use with --csv. Either 'a' for append or 'o' for\\noverwrite. Default: Abort if file exists."
    pseudo_knots: "Allow pseudoknots when extracting the structure from\\nPDB files."
    chains: "When reading pdb-files: Only extract the given\\nchain(s). Comma-seperated"
    pdb_secondary_structure: "When reading a single chain from a pdb-files: Enforce\\nthe secondary structure given as dotbracket string.\\n(This only works, if --chain is given!)"
    pdb_annotation_tool: "What program to use for detecting basepairs in PDB/\\nMMCIF structures. This commandline option overrides\\nthe value in the config file (if present).If this is\\nnot present and no config-file is given, we try to\\ndetect the installed programs."
    pdb_allow_www_query: "Usually, if modified residues/ ligand with an unknown\\n3-letter code are encountered in PDB files, they are\\nremoved from the chain and a log message of severity\\nINFO is issued. With this option, we first try to\\nquery the PDBeChem database for the 3-letter code, to\\nsee whether or not it is a modified residue that can\\nbe converted to its standard parent and should be part\\nof the chain."
    verbose: "Show verbose output (Output logged at level\\nlogging.INFO)"
    debug: "[DEBUG]       A comma-seperated list of logger names for which debug\\noutput will be activated.WARNING: If you misspell the\\nlogger name, this argument will be ignored"
    commaseperated_list_logger: "[QUIET], --quiet [QUIET]\\nA comma-seperated list of logger names for which only\\nmessages logged at the level 'CRITICAL' will be\\nshown.Use this without arguments if everything should\\nbe quiet.\\n"
    rna: "One or more files containing one or more RNAs each.\\nSupported Filetypes are: pdb files, forgi cg files,\\nforgi bg files, fasta files,\\ndotbracketfilesAlternatively you can supply a\\ndotbracket-string (containing only the characters\\n'.()[]{}&') from the commandline."
  }
  output {
    File out_stdout = stdout()
  }
}