version 1.0

task CompareRNA.py {
  input {
    Boolean? keep_length_one_stems
    Boolean? pseudo_knots
    String? chain
    String? pdb_secondary_structure
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
      ~{if defined(chain) then ("--chain " +  '"' + chain + '"') else ""} \
      ~{if defined(pdb_secondary_structure) then ("--pdb-secondary-structure " +  '"' + pdb_secondary_structure + '"') else ""} \
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
    chain: "When reading pdb-files: Only extract the given chain."
    pdb_secondary_structure: "When reading a single chain from a pdb-files: Enforce the secondary structure given as dotbracket string. (This only works, if --chain is given!)"
    verbose: "Show verbose output (Output logged at level logging.INFO)"
    debug: "[DEBUG]       A comma-seperated list of logger names for which debug output will be activated.WARNING: If you misspell the logger name, this argument will be ignored"
    commaseperated_list_logger_names_logged: "[QUIET], --quiet [QUIET] A comma-seperated list of logger names for which only messages logged at the level 'CRITICAL' will be shown.Use this without arguments if everything should be quiet."
    acc: "Compare based on the Adjacency correlation coefficient ACC"
    rmsd: "Compare based on CG-RMSD"
    pdb_rmsd: "Compare based on PDB-RMSD"
    rna: "2 files containing one RNA each. Supported Filetypes are: pdb files, forgi cg files"
  }
}