class: CommandLineTool
id: treeator.cwl
inputs:
- id: in_alphabet_file
  doc: "[file/type] give file with character alphabet, or dna,\nprotein, or binary\
    \ for dna, amino acid,\nrespectively binary (0 1) alphabets (default:\ndna)."
  type: boolean?
  inputBinding:
    prefix: --alphabet_file
- id: in_data_file
  doc: '[file]          give the data file.'
  type: boolean?
  inputBinding:
    prefix: --data_file
- id: in_fixed
  doc: "[number/s]          give parameter to fix. First parameter is\nindexed 0.\
    \ Several parameters can be given in a\ncomma separated string, e.g. -e 0,2,3."
  type: boolean?
  inputBinding:
    prefix: --fixed
- id: in_file
  doc: "[file]               give data file name, or if data file name\nalready given,\
    \ then tree file name. If nexus\nformat and no tree file name is given, tree is\n\
    assumed to be in same file as data."
  type: boolean?
  inputBinding:
    prefix: --file
- id: in_format
  doc: "[format]                give the format of the input files. For\ncharacter\
    \ file fasta, phylip and nexus are the\noptions. For the tree file the options\
    \ are\nnewick and nexus. Give the character file\nformat first, and the tree file\
    \ format after a\ncomma, e.g. --format phylip,newick. Fasta is\nthe default character\
    \ file format, and newick\nis the default tree file format (unless\ncharacter\
    \ file is set to nexus, then nexus is\nalso default for tree file, e.g. --format\n\
    nexus)."
  type: boolean?
  inputBinding:
    prefix: --format
- id: in_get_state_at_nodes
  doc: "will give the states at internal nodes as\ncomments (readable in FigTree)."
  type: boolean?
  inputBinding:
    prefix: --get_state_at_nodes
- id: in_likelihood
  doc: calculate likelihood for data given tree.
  type: boolean?
  inputBinding:
    prefix: --likelihood
- id: in_model
  doc: "[number/s]          give the model by numbering the rate parameters\nfor different\
    \ transition, e.g. -m 0,1,0,2,1,2.\nThe order is by row, i.e. from parameter 0\
    \ to\nparameter 1 first then, 0 to 2, and so on to\nall other parameters, then\
    \ 1 to 0, and so\nforth."
  type: boolean?
  inputBinding:
    prefix: --model
- id: in_neighbour_joining
  doc: "compute neighbour joining tree for given data.\nThe data should be  a left\
    \ triangular\nsimilarity matrix."
  type: boolean?
  inputBinding:
    prefix: --neighbour_joining
- id: in_no_branch_length
  doc: "do not print branch lengths and do not\ncalculate branch lengths for parsimony\
    \ trees."
  type: boolean?
  inputBinding:
    prefix: --no_branch_length
- id: in_no_label
  doc: "will tell treeator that there are no taxon\nlabels in the similarity matrix."
  type: boolean?
  inputBinding:
    prefix: --no_label
- id: in_no_optim
  doc: "calculate likelihood for given parameters. No\noptimization."
  type: boolean?
  inputBinding:
    prefix: --no_optim
- id: in_output
  doc: "[newick/nexus]          give tree format for output, nexus (nex or x\nfor\
    \ short) or newick (new or w for short), e.g\n--output x. (default w)."
  type: boolean?
  inputBinding:
    prefix: --output
- id: in_parameters
  doc: "[values]       give corresponding parameter values for\nparameters. If optimizing\
    \ these will be\nstarting values, e.g. -P 0.1,0.01,0.05."
  type: boolean?
  inputBinding:
    prefix: --parameters
- id: in_parsimony
  doc: "calculate parsimony score for given tree and\ndata."
  type: boolean?
  inputBinding:
    prefix: --parsimony
- id: in_random
  doc: do stepwise addition in random order.
  type: boolean?
  inputBinding:
    prefix: --random
- id: in_tree_file
  doc: '[file]          give tree file name.'
  type: boolean?
  inputBinding:
    prefix: --tree_file
- id: in_step_wise
  doc: do parsimony stepwise addition.
  type: boolean?
  inputBinding:
    prefix: --step_wise
- id: in_verbose
  doc: get additional output.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_arguments
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_data_file_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- treeator
