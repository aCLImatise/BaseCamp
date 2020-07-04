version 1.0

task CompareRNA.py {
  input {
    Boolean? keep_length_one_stems
    Boolean? pseudo_knots
    String? chains
    String? pdb_secondary_structure
    String? pdb_annotation_tool
    Boolean? pdb_allow_www_query
    Boolean? verbose
    Boolean? debug
    Boolean? commaseperated_list_logger_names_logged
    Boolean? acc
    Boolean? rmsd
    Boolean? pdb_rmsd
    String rna
  }
  command <<<
    compare_RNA.py \
      ~{rna} \
      ~{true="--keep-length-one-stems" false="" keep_length_one_stems} \
      ~{true="--pseudoknots" false="" pseudo_knots} \
      ~{if defined(chains) then ("--chains " +  '"' + chains + '"') else ""} \
      ~{if defined(pdb_secondary_structure) then ("--pdb-secondary-structure " +  '"' + pdb_secondary_structure + '"') else ""} \
      ~{if defined(pdb_annotation_tool) then ("--pdb-annotation-tool " +  '"' + pdb_annotation_tool + '"') else ""} \
      ~{true="--pdb-allow-www-query" false="" pdb_allow_www_query} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug} \
      ~{true="-q" false="" commaseperated_list_logger_names_logged} \
      ~{true="--acc" false="" acc} \
      ~{true="--rmsd" false="" rmsd} \
      ~{true="--pdb-rmsd" false="" pdb_rmsd}
  >>>
  parameter_meta {
    keep_length_one_stems: "For all input formats except forgi bg/cg files, this controlls whether stems of length one are dissolved to unpaired regions (default) or kept (if this option is present). In the case of input in forgi-format, the RNA from the file is not modified."
    pseudo_knots: "Allow pseudoknots when extracting the structure from PDB files."
    chains: "When reading pdb-files: Only extract the given chain(s). Comma-seperated"
    pdb_secondary_structure: "When reading a single chain from a pdb-files: Enforce the secondary structure given as dotbracket string. (This only works, if --chain is given!)"
    pdb_annotation_tool: "What program to use for detecting basepairs in PDB/ MMCIF structures. This commandline option overrides the value in the config file (if present).If this is not present and no config-file is given, we try to detect the installed programs."
    pdb_allow_www_query: "Usually, if modified residues/ ligand with an unknown 3-letter code are encountered in PDB files, they are removed from the chain and a log message of severity INFO is issued. With this option, we first try to query the PDBeChem database for the 3-letter code, to see whether or not it is a modified residue that can be converted to its standard parent and should be part of the chain."
    verbose: "Show verbose output (Output logged at level logging.INFO)"
    debug: "[DEBUG]       A comma-seperated list of logger names for which debug output will be activated.WARNING: If you misspell the logger name, this argument will be ignored"
    commaseperated_list_logger_names_logged: "[QUIET], --quiet [QUIET] A comma-seperated list of logger names for which only messages logged at the level 'CRITICAL' will be shown.Use this without arguments if everything should be quiet."
    acc: "Compare based on the Adjacency correlation coefficient ACC"
    rmsd: "Compare based on CG-RMSD"
    pdb_rmsd: "Compare based on PDB-RMSD"
    rna: "2 files containing one RNA each. Supported Filetypes are: pdb files, forgi cg files"
  }
}