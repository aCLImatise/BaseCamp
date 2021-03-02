version 1.0

task VisualizeRnapy {
  input {
    Boolean? keep_length_one_stems
    String? thin_cylinders
    Boolean? virtual_atoms
    Boolean? virtual_residues
    String? only_elements
    Boolean? no_loops
    Boolean? long_range
    String? stem_color
    String? multi_loop_color
    Boolean? text
    String? labels
    Boolean? side_chain_atoms
    Int? element_colors
    Boolean? align
    String? create_picture_exit
    Boolean? batch
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
    visualize_rna_py \
      ~{rna} \
      ~{if (keep_length_one_stems) then "--keep-length-one-stems" else ""} \
      ~{if defined(thin_cylinders) then ("--thin-cylinders " +  '"' + thin_cylinders + '"') else ""} \
      ~{if (virtual_atoms) then "--virtual-atoms" else ""} \
      ~{if (virtual_residues) then "--virtual-residues" else ""} \
      ~{if defined(only_elements) then ("--only-elements " +  '"' + only_elements + '"') else ""} \
      ~{if (no_loops) then "--no-loops" else ""} \
      ~{if (long_range) then "--longrange" else ""} \
      ~{if defined(stem_color) then ("--stem-color " +  '"' + stem_color + '"') else ""} \
      ~{if defined(multi_loop_color) then ("--multiloop-color " +  '"' + multi_loop_color + '"') else ""} \
      ~{if (text) then "--text" else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if (side_chain_atoms) then "--sidechain-atoms" else ""} \
      ~{if defined(element_colors) then ("--element-colors " +  '"' + element_colors + '"') else ""} \
      ~{if (align) then "--align" else ""} \
      ~{if defined(create_picture_exit) then ("--output " +  '"' + create_picture_exit + '"') else ""} \
      ~{if (batch) then "--batch" else ""} \
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
    thin_cylinders: "Make coarse_grain RNA thinner"
    virtual_atoms: "Color virtual atoms (if displayed) depending on the"
    virtual_residues: "Display the virtual residues as spheres"
    only_elements: "Display only these elements, separated by commas"
    no_loops: "Don't display the coarse-grain hairpin loops"
    long_range: "Display long-range interactions"
    stem_color: "The default stem color in coarse-grain drawings"
    multi_loop_color: "The default multiloop color in coarse-grain drawings"
    text: "Add labels indicating the element names to the figure."
    labels: "Add labels to elements. Expects a comma seperated\\nstring of element:label, like 'm0:LookHere' to display\\n'LookHere' at the center of 'm0'."
    side_chain_atoms: "Include the sidechain atoms. Automatically enables"
    element_colors: "Specify a color for certain elements (comma-separated\\nelement names or element_name:color)Example: \\\"m1,m2\\\"\\n(makes m1, m2 purple) or\\n\\\"m0:red,m1:green,s0:AA11GG,default:black\\\", where\\n\\\"AA11GG\\\" is a hex value and \\\"default\\\" addresses all\\nother elements. Warning: colors not understood by\\nPYMOL will be interpreted as black."
    align: "Align the RNAs (if multiple are provided)"
    create_picture_exit: "Create a picture of the scene and exit"
    batch: "Start pymol in batch mode"
    pseudo_knots: "Allow pseudoknots when extracting the structure from\\nPDB files."
    chains: "When reading pdb-files: Only extract the given\\nchain(s). Comma-seperated"
    pdb_secondary_structure: "When reading a single chain from a pdb-files: Enforce\\nthe secondary structure given as dotbracket string.\\n(This only works, if --chain is given!)"
    pdb_annotation_tool: "What program to use for detecting basepairs in PDB/\\nMMCIF structures. This commandline option overrides\\nthe value in the config file (if present).If this is\\nnot present and no config-file is given, we try to\\ndetect the installed programs."
    pdb_allow_www_query: "Usually, if modified residues/ ligand with an unknown\\n3-letter code are encountered in PDB files, they are\\nremoved from the chain and a log message of severity\\nINFO is issued. With this option, we first try to\\nquery the PDBeChem database for the 3-letter code, to\\nsee whether or not it is a modified residue that can\\nbe converted to its standard parent and should be part\\nof the chain."
    verbose: "Show verbose output (Output logged at level\\nlogging.INFO)"
    debug: "[DEBUG]       A comma-seperated list of logger names for which debug\\noutput will be activated.WARNING: If you misspell the\\nlogger name, this argument will be ignored"
    commaseperated_list_logger: "[QUIET], --quiet [QUIET]\\nA comma-seperated list of logger names for which only\\nmessages logged at the level 'CRITICAL' will be\\nshown.Use this without arguments if everything should\\nbe quiet.\\n"
    rna: "One or more files containing one or more RNAs each.\\nSupported Filetypes are: pdb files, forgi cg files"
  }
  output {
    File out_stdout = stdout()
  }
}