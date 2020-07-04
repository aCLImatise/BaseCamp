version 1.0

task VisualizeRna.py {
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
    Boolean? rainbow
    String? element_colors
    Boolean? align
    String? create_picture_scene
    Boolean? batch
    Boolean? pseudo_knots
    String? chains
    String? pdb_secondary_structure
    String? pdb_annotation_tool
    Boolean? pdb_allow_www_query
    Boolean? verbose
    Boolean? debug
    Boolean? commaseperated_list_logger_names_logged
    String rna
  }
  command <<<
    visualize_rna.py \
      ~{rna} \
      ~{true="--keep-length-one-stems" false="" keep_length_one_stems} \
      ~{if defined(thin_cylinders) then ("--thin-cylinders " +  '"' + thin_cylinders + '"') else ""} \
      ~{true="--virtual-atoms" false="" virtual_atoms} \
      ~{true="--virtual-residues" false="" virtual_residues} \
      ~{if defined(only_elements) then ("--only-elements " +  '"' + only_elements + '"') else ""} \
      ~{true="--no-loops" false="" no_loops} \
      ~{true="--longrange" false="" long_range} \
      ~{if defined(stem_color) then ("--stem-color " +  '"' + stem_color + '"') else ""} \
      ~{if defined(multi_loop_color) then ("--multiloop-color " +  '"' + multi_loop_color + '"') else ""} \
      ~{true="--text" false="" text} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{true="--sidechain-atoms" false="" side_chain_atoms} \
      ~{true="--rainbow" false="" rainbow} \
      ~{if defined(element_colors) then ("--element-colors " +  '"' + element_colors + '"') else ""} \
      ~{true="--align" false="" align} \
      ~{if defined(create_picture_scene) then ("--output " +  '"' + create_picture_scene + '"') else ""} \
      ~{true="--batch" false="" batch} \
      ~{true="--pseudoknots" false="" pseudo_knots} \
      ~{if defined(chains) then ("--chains " +  '"' + chains + '"') else ""} \
      ~{if defined(pdb_secondary_structure) then ("--pdb-secondary-structure " +  '"' + pdb_secondary_structure + '"') else ""} \
      ~{if defined(pdb_annotation_tool) then ("--pdb-annotation-tool " +  '"' + pdb_annotation_tool + '"') else ""} \
      ~{true="--pdb-allow-www-query" false="" pdb_allow_www_query} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug} \
      ~{true="-q" false="" commaseperated_list_logger_names_logged}
  >>>
  parameter_meta {
    keep_length_one_stems: "For all input formats except forgi bg/cg files, this controlls whether stems of length one are dissolved to unpaired regions (default) or kept (if this option is present). In the case of input in forgi-format, the RNA from the file is not modified."
    thin_cylinders: "Make coarse_grain RNA thinner"
    virtual_atoms: "Display the virtual atoms"
    virtual_residues: "Display the virtual residues as spheres"
    only_elements: "Display only these elements, separated by commas"
    no_loops: "Don't display the coarse-grain hairpin loops"
    long_range: "Display long-range interactions"
    stem_color: "The default stem color in coarse-grain drawings"
    multi_loop_color: "The default multiloop color in coarse-grain drawings"
    text: "Add labels indicating the element names to the figure."
    labels: "Add labels to elements. Expects a comma seperated string of element:label, like 'm0:LookHere' to display 'LookHere' at the center of 'm0'."
    side_chain_atoms: "Include the sidechain atoms. Automatically enables --virtual-atoms"
    rainbow: "Color virtual atoms (if displayed) depending on the nucleotide position."
    element_colors: "Specify a color for certain elements (comma-separated element names or element_name:color)Example: \"m1,m2\" (makes m1, m2 purple) or \"m0:red,m1:green,s0:AA11GG,default:black\", where \"AA11GG\" is a hex value and \"default\" addresses all other elements. Warning: colors not understood by PYMOL will be interpreted as black."
    align: "Align the RNAs (if multiple are provided)"
    create_picture_scene: "Create a picture of the scene and exit"
    batch: "Start pymol in batch mode"
    pseudo_knots: "Allow pseudoknots when extracting the structure from PDB files."
    chains: "When reading pdb-files: Only extract the given chain(s). Comma-seperated"
    pdb_secondary_structure: "When reading a single chain from a pdb-files: Enforce the secondary structure given as dotbracket string. (This only works, if --chain is given!)"
    pdb_annotation_tool: "What program to use for detecting basepairs in PDB/ MMCIF structures. This commandline option overrides the value in the config file (if present).If this is not present and no config-file is given, we try to detect the installed programs."
    pdb_allow_www_query: "Usually, if modified residues/ ligand with an unknown 3-letter code are encountered in PDB files, they are removed from the chain and a log message of severity INFO is issued. With this option, we first try to query the PDBeChem database for the 3-letter code, to see whether or not it is a modified residue that can be converted to its standard parent and should be part of the chain."
    verbose: "Show verbose output (Output logged at level logging.INFO)"
    debug: "[DEBUG]       A comma-seperated list of logger names for which debug output will be activated.WARNING: If you misspell the logger name, this argument will be ignored"
    commaseperated_list_logger_names_logged: "[QUIET], --quiet [QUIET] A comma-seperated list of logger names for which only messages logged at the level 'CRITICAL' will be shown.Use this without arguments if everything should be quiet."
    rna: "One or more files containing one or more RNAs each. Supported Filetypes are: pdb files, forgi cg files"
  }
}