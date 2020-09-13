version 1.0

task Treeator {
  input {
    Boolean? alphabet_file
    Boolean? data_file
    Boolean? fixed
    Boolean? file
    Boolean? format
    Boolean? get_state_at_nodes
    Boolean? likelihood
    Boolean? model
    Boolean? neighbour_joining
    Boolean? no_branch_length
    Boolean? no_label
    Boolean? no_optim
    Boolean? give_tree_format
    Boolean? parameters
    Boolean? parsimony
    Boolean? random
    Boolean? tree_file
    Boolean? step_wise
    Boolean? verbose
    String? arguments
    String data_file_dot_txt
  }
  command <<<
    treeator \
      ~{arguments} \
      ~{data_file_dot_txt} \
      ~{if (alphabet_file) then "--alphabet_file" else ""} \
      ~{if (data_file) then "--data_file" else ""} \
      ~{if (fixed) then "--fixed" else ""} \
      ~{if (file) then "--file" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (get_state_at_nodes) then "--get_state_at_nodes" else ""} \
      ~{if (likelihood) then "--likelihood" else ""} \
      ~{if (model) then "--model" else ""} \
      ~{if (neighbour_joining) then "--neighbour_joining" else ""} \
      ~{if (no_branch_length) then "--no_branch_length" else ""} \
      ~{if (no_label) then "--no_label" else ""} \
      ~{if (no_optim) then "--no_optim" else ""} \
      ~{if (give_tree_format) then "--output" else ""} \
      ~{if (parameters) then "--parameters" else ""} \
      ~{if (parsimony) then "--parsimony" else ""} \
      ~{if (random) then "--random" else ""} \
      ~{if (tree_file) then "--tree_file" else ""} \
      ~{if (step_wise) then "--step_wise" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    alphabet_file: "/ -a [file/type] give file with character alphabet, or dna,\\nprotein, or binary for dna, amino acid,\\nrespectively binary (0 1) alphabets (default:\\ndna)."
    data_file: "/ -d [file]          give the data file."
    fixed: "/ -e [number/s]          give parameter to fix. First parameter is\\nindexed 0. Several parameters can be given in a\\ncomma separated string, e.g. -e 0,2,3."
    file: "/ -f [file]               give data file name, or if data file name\\nalready given, then tree file name. If nexus\\nformat and no tree file name is given, tree is\\nassumed to be in same file as data."
    format: "[format]                give the format of the input files. For\\ncharacter file fasta, phylip and nexus are the\\noptions. For the tree file the options are\\nnewick and nexus. Give the character file\\nformat first, and the tree file format after a\\ncomma, e.g. --format phylip,newick. Fasta is\\nthe default character file format, and newick\\nis the default tree file format (unless\\ncharacter file is set to nexus, then nexus is\\nalso default for tree file, e.g. --format\\nnexus)."
    get_state_at_nodes: "will give the states at internal nodes as\\ncomments (readable in FigTree)."
    likelihood: "/ -l                calculate likelihood for data given tree."
    model: "/ -m [number/s]          give the model by numbering the rate parameters\\nfor different transition, e.g. -m 0,1,0,2,1,2.\\nThe order is by row, i.e. from parameter 0 to\\nparameter 1 first then, 0 to 2, and so on to\\nall other parameters, then 1 to 0, and so\\nforth."
    neighbour_joining: "/ -n         compute neighbour joining tree for given data.\\nThe data should be  a left triangular\\nsimilarity matrix."
    no_branch_length: "/ -0          do not print branch lengths and do not\\ncalculate branch lengths for parsimony trees."
    no_label: "/ -L                  will tell treeator that there are no taxon\\nlabels in the similarity matrix."
    no_optim: "/ -N                  calculate likelihood for given parameters. No\\noptimization."
    give_tree_format: "[newick/nexus]          give tree format for output, nexus (nex or x\\nfor short) or newick (new or w for short), e.g\\n--output x. (default w)."
    parameters: "/ -P [values]       give corresponding parameter values for\\nparameters. If optimizing these will be\\nstarting values, e.g. -P 0.1,0.01,0.05."
    parsimony: "/ -p                 calculate parsimony score for given tree and\\ndata."
    random: "/ -r                    do stepwise addition in random order."
    tree_file: "/ -t [file]          give tree file name."
    step_wise: "/ -s                 do parsimony stepwise addition."
    verbose: "/ -v                   get additional output."
    arguments: ""
    data_file_dot_txt: ""
  }
  output {
    File out_stdout = stdout()
  }
}