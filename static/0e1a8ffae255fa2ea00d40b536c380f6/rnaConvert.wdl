version 1.0

task RnaConvert.py {
  input {
    Boolean? keep_length_one_stems
    String? target_type
    Boolean? to_file
    File? filename
    Boolean? force
    Boolean? pseudo_knots
    String? chain
    String? pdb_secondary_structure
    Boolean? verbose
    Boolean? debug
    Boolean? commaseperated_list_logger_names_logged
    String rna
  }
  command <<<
    rnaConvert.py \
      ~{rna} \
      ~{true="--keep-length-one-stems" false="" keep_length_one_stems} \
      ~{if defined(target_type) then ("--target-type " +  '"' + target_type + '"') else ""} \
      ~{true="--to-file" false="" to_file} \
      ~{if defined(filename) then ("--filename " +  '"' + filename + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{true="--pseudoknots" false="" pseudo_knots} \
      ~{if defined(chain) then ("--chain " +  '"' + chain + '"') else ""} \
      ~{if defined(pdb_secondary_structure) then ("--pdb-secondary-structure " +  '"' + pdb_secondary_structure + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug} \
      ~{true="-q" false="" commaseperated_list_logger_names_logged}
  >>>
  parameter_meta {
    keep_length_one_stems: "For all input formats except forgi bg/cg files, this controlls whether stems of length one are dissolved to unpaired regions (default) or kept (if this option is present). In the case of input in forgi-format, the RNA from the file is not modified."
    target_type: "The target file-type to convert into."
    to_file: "Store the converted RNA in files instead of printing them to stdout. The file-name will be the RNA's name (if present), otherwise 'rna001' etc."
    filename: "If this is present, --to-file will automatically be true.A target filename (or path) without extention. If it is a filename, use the given filename instead of the RNA's name. If more than one input-RNA is present, appends automatically a increasing number.If it is a directory, create files in this directory."
    force: "Overwrite files, if they already exist. Note: In case of race conditions, files could be overwritten even if this flag is not provided."
    pseudo_knots: "Allow pseudoknots when extracting the structure from PDB files."
    chain: "When reading pdb-files: Only extract the given chain."
    pdb_secondary_structure: "When reading a single chain from a pdb-files: Enforce the secondary structure given as dotbracket string. (This only works, if --chain is given!)"
    verbose: "Show verbose output (Output logged at level logging.INFO)"
    debug: "[DEBUG]       A comma-seperated list of logger names for which debug output will be activated.WARNING: If you misspell the logger name, this argument will be ignored"
    commaseperated_list_logger_names_logged: "[QUIET], --quiet [QUIET] A comma-seperated list of logger names for which only messages logged at the level 'CRITICAL' will be shown.Use this without arguments if everything should be quiet."
    rna: "One or more files containing one or more RNAs each. Supported Filetypes are: pdb files, forgi cg files, forgi bg files, fasta files, dotbracketfilesAlternatively you can supply a dotbracket-string (containing only the characters '.()[]{}&') from the commandline."
  }
}