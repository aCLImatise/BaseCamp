class: CommandLineTool
id: usher.cwl
inputs:
- id: in_arg_input_vcf
  doc: "[ --vcf ] arg                      Input VCF file (in uncompressed or\ngzip-compressed\
    \ .gz format) [REQUIRED]"
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_arg_input_tree
  doc: '[ --tree ] arg                     Input tree file'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_arg_output_directory
  doc: "[ --outdir ] arg (=.)              Output directory to dump output and log\n\
    files [DEFAULT uses current directory]"
  type: Directory?
  inputBinding:
    prefix: -d
- id: in_argload_mutationannotated_tree
  doc: "[ --load-mutation-annotated-tree ] arg\nLoad mutation-annotated tree object"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_argsave_output_mutationannotated
  doc: "[ --save-mutation-annotated-tree ] arg\nSave output mutation-annotated tree\n\
    object to the specified filename"
  type: File?
  inputBinding:
    prefix: -o
- id: in_sort_new_computedparsimony
  doc: "[ --sort-before-placement-1 ]      Sort new samples based on computed\nparsimony\
    \ score and then number of\noptimal placements before the actual\nplacement [EXPERIMENTAL]."
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_sort_new_the
  doc: "[ --sort-before-placement-2 ]      Sort new samples based on the number of\n\
    optimal placements and then the\nparsimony score before the actual\nplacement\
    \ [EXPERIMENTAL]."
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_reverse_sorting_order
  doc: "[ --reverse-sort ]                 Reverse the sorting order of sorting\n\
    options (sort-before-placement-1 or\nsort-before-placement-2) [EXPERIMENTAL]"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_collapse_internal_nodes_inputtree
  doc: "[ --collapse-tree ]                Collapse internal nodes of the input\n\
    tree with no mutations and condense\nidentical sequences in polytomies into\n\
    a single node and the save the tree to\nfile condensed-tree.nh in outdir"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_collapse_internal_nodes_outputtree
  doc: "[ --collapse-output-tree ]         Collapse internal nodes of the output\n\
    tree with no mutations before the\nsaving the tree to file final-tree.nh\nin outdir"
  type: File?
  inputBinding:
    prefix: -C
- id: in_arg_maximum_number
  doc: "[ --max-uncertainty-per-sample ] arg (=1000000)\nMaximum number of equally\
    \ parsimonious\nplacements allowed per sample beyond\nwhich the sample is ignored"
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_write_final_tree
  doc: "[ --write-uncondensed-final-tree ]\nWrite the final tree in uncondensed\n\
    format and save to file\nuncondensed-final-tree.nh in outdir"
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_arg_write_set
  doc: "[ --write-subtrees-size ] arg (=0) Write minimum set of subtrees covering\n\
    the newly added samples of size equal\nto this value"
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_arg_similar_writesubtreessize
  doc: "[ --write-single-subtree ] arg (=0)\nSimilar to write-subtrees-size but\n\
    produces a single subtree with all\nnewly added samples along with random\nsamples\
    \ up to the value specified by\nthis argument"
  type: boolean?
  inputBinding:
    prefix: -K
- id: in_write_parsimony_scores
  doc: "[ --write-parsimony-scores-per-node ]\nWrite the parsimony scores for adding\n\
    new samples at each existing node in\nthe tree without modifying the tree in\n\
    a file names parsimony-scores.tsv in\noutdir"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_arg_create_tree
  doc: "[ --multiple-placements ] arg (=1) Create a new tree up to this limit for\n\
    each possibility of parsimony-optimal\nplacement"
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_retain_branch_lengths
  doc: "[ --retain-input-branch-lengths ]  Retain the branch lengths from the\ninput\
    \ tree in out newick files instead\nof using number of mutations for the\nbranch\
    \ lengths."
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_arg_number_use
  doc: "[ --threads ] arg (=2)             Number of threads to use when possible\n\
    [DEFAULT uses all available cores, 2\ndetected on this machine]"
  type: boolean?
  inputBinding:
    prefix: -T
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_directory
  doc: "[ --outdir ] arg (=.)              Output directory to dump output and log\n\
    files [DEFAULT uses current directory]"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_arg_output_directory)
- id: out_argsave_output_mutationannotated
  doc: "[ --save-mutation-annotated-tree ] arg\nSave output mutation-annotated tree\n\
    object to the specified filename"
  type: File?
  outputBinding:
    glob: $(inputs.in_argsave_output_mutationannotated)
- id: out_collapse_internal_nodes_outputtree
  doc: "[ --collapse-output-tree ]         Collapse internal nodes of the output\n\
    tree with no mutations before the\nsaving the tree to file final-tree.nh\nin outdir"
  type: File?
  outputBinding:
    glob: $(inputs.in_collapse_internal_nodes_outputtree)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/usher:0.2.0--hfcd16c1_0
cwlVersion: v1.1
baseCommand:
- usher
