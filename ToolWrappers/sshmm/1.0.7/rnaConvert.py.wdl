version 1.0

task RnaConvertpy {
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
    Boolean? commaseperated_list_logger
    String rna
  }
  command <<<
    rnaConvert_py \
      ~{rna} \
      ~{if (keep_length_one_stems) then "--keep-length-one-stems" else ""} \
      ~{if defined(target_type) then ("--target-type " +  '"' + target_type + '"') else ""} \
      ~{if (to_file) then "--to-file" else ""} \
      ~{if defined(filename) then ("--filename " +  '"' + filename + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (pseudo_knots) then "--pseudoknots" else ""} \
      ~{if defined(chain) then ("--chain " +  '"' + chain + '"') else ""} \
      ~{if defined(pdb_secondary_structure) then ("--pdb-secondary-structure " +  '"' + pdb_secondary_structure + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (commaseperated_list_logger) then "-q" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    keep_length_one_stems: "For all input formats except forgi bg/cg files, this\\ncontrolls whether stems of length one are dissolved to\\nunpaired regions (default) or kept (if this option is\\npresent). In the case of input in forgi-format, the\\nRNA from the file is not modified."
    target_type: "The target file-type to convert into."
    to_file: "Store the converted RNA in files instead of printing\\nthem to stdout. The file-name will be the RNA's name\\n(if present), otherwise 'rna001' etc."
    filename: "If this is present, --to-file will automatically be\\ntrue.A target filename (or path) without extention. If\\nit is a filename, use the given filename instead of\\nthe RNA's name. If more than one input-RNA is present,\\nappends automatically a increasing number.If it is a\\ndirectory, create files in this directory."
    force: "Overwrite files, if they already exist. Note: In case\\nof race conditions, files could be overwritten even if\\nthis flag is not provided."
    pseudo_knots: "Allow pseudoknots when extracting the structure from\\nPDB files."
    chain: "When reading pdb-files: Only extract the given chain."
    pdb_secondary_structure: "When reading a single chain from a pdb-files: Enforce\\nthe secondary structure given as dotbracket string.\\n(This only works, if --chain is given!)"
    verbose: "Show verbose output (Output logged at level\\nlogging.INFO)"
    debug: "[DEBUG]       A comma-seperated list of logger names for which debug\\noutput will be activated.WARNING: If you misspell the\\nlogger name, this argument will be ignored"
    commaseperated_list_logger: "[QUIET], --quiet [QUIET]\\nA comma-seperated list of logger names for which only\\nmessages logged at the level 'CRITICAL' will be\\nshown.Use this without arguments if everything should\\nbe quiet.\\n"
    rna: "One or more files containing one or more RNAs each.\\nSupported Filetypes are: pdb files, forgi cg files,\\nforgi bg files, fasta files,\\ndotbracketfilesAlternatively you can supply a\\ndotbracket-string (containing only the characters\\n'.()[]{}&') from the commandline."
  }
  output {
    File out_stdout = stdout()
  }
}