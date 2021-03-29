version 1.0

task Usher {
  input {
    Boolean? arg_input_vcf
    Boolean? arg_input_tree
    Directory? arg_output_directory
    Boolean? argload_mutationannotated_tree
    File? argsave_output_mutationannotated
    Boolean? sort_new_computedparsimony
    Boolean? sort_new_the
    Boolean? reverse_sorting_order
    Boolean? collapse_internal_nodes_inputtree
    File? collapse_internal_nodes_outputtree
    Boolean? arg_maximum_number
    Boolean? write_final_tree
    Boolean? arg_write_set
    Boolean? arg_similar_writesubtreessize
    Boolean? write_parsimony_scores
    Boolean? arg_create_tree
    Boolean? retain_branch_lengths
    Boolean? arg_number_use
  }
  command <<<
    usher \
      ~{if (arg_input_vcf) then "-v" else ""} \
      ~{if (arg_input_tree) then "-t" else ""} \
      ~{if (arg_output_directory) then "-d" else ""} \
      ~{if (argload_mutationannotated_tree) then "-i" else ""} \
      ~{if (argsave_output_mutationannotated) then "-o" else ""} \
      ~{if (sort_new_computedparsimony) then "-s" else ""} \
      ~{if (sort_new_the) then "-S" else ""} \
      ~{if (reverse_sorting_order) then "-r" else ""} \
      ~{if (collapse_internal_nodes_inputtree) then "-c" else ""} \
      ~{if (collapse_internal_nodes_outputtree) then "-C" else ""} \
      ~{if (arg_maximum_number) then "-e" else ""} \
      ~{if (write_final_tree) then "-u" else ""} \
      ~{if (arg_write_set) then "-k" else ""} \
      ~{if (arg_similar_writesubtreessize) then "-K" else ""} \
      ~{if (write_parsimony_scores) then "-p" else ""} \
      ~{if (arg_create_tree) then "-M" else ""} \
      ~{if (retain_branch_lengths) then "-l" else ""} \
      ~{if (arg_number_use) then "-T" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/usher:0.2.0--hfcd16c1_0"
  }
  parameter_meta {
    arg_input_vcf: "[ --vcf ] arg                      Input VCF file (in uncompressed or\\ngzip-compressed .gz format) [REQUIRED]"
    arg_input_tree: "[ --tree ] arg                     Input tree file"
    arg_output_directory: "[ --outdir ] arg (=.)              Output directory to dump output and log\\nfiles [DEFAULT uses current directory]"
    argload_mutationannotated_tree: "[ --load-mutation-annotated-tree ] arg\\nLoad mutation-annotated tree object"
    argsave_output_mutationannotated: "[ --save-mutation-annotated-tree ] arg\\nSave output mutation-annotated tree\\nobject to the specified filename"
    sort_new_computedparsimony: "[ --sort-before-placement-1 ]      Sort new samples based on computed\\nparsimony score and then number of\\noptimal placements before the actual\\nplacement [EXPERIMENTAL]."
    sort_new_the: "[ --sort-before-placement-2 ]      Sort new samples based on the number of\\noptimal placements and then the\\nparsimony score before the actual\\nplacement [EXPERIMENTAL]."
    reverse_sorting_order: "[ --reverse-sort ]                 Reverse the sorting order of sorting\\noptions (sort-before-placement-1 or\\nsort-before-placement-2) [EXPERIMENTAL]"
    collapse_internal_nodes_inputtree: "[ --collapse-tree ]                Collapse internal nodes of the input\\ntree with no mutations and condense\\nidentical sequences in polytomies into\\na single node and the save the tree to\\nfile condensed-tree.nh in outdir"
    collapse_internal_nodes_outputtree: "[ --collapse-output-tree ]         Collapse internal nodes of the output\\ntree with no mutations before the\\nsaving the tree to file final-tree.nh\\nin outdir"
    arg_maximum_number: "[ --max-uncertainty-per-sample ] arg (=1000000)\\nMaximum number of equally parsimonious\\nplacements allowed per sample beyond\\nwhich the sample is ignored"
    write_final_tree: "[ --write-uncondensed-final-tree ]\\nWrite the final tree in uncondensed\\nformat and save to file\\nuncondensed-final-tree.nh in outdir"
    arg_write_set: "[ --write-subtrees-size ] arg (=0) Write minimum set of subtrees covering\\nthe newly added samples of size equal\\nto this value"
    arg_similar_writesubtreessize: "[ --write-single-subtree ] arg (=0)\\nSimilar to write-subtrees-size but\\nproduces a single subtree with all\\nnewly added samples along with random\\nsamples up to the value specified by\\nthis argument"
    write_parsimony_scores: "[ --write-parsimony-scores-per-node ]\\nWrite the parsimony scores for adding\\nnew samples at each existing node in\\nthe tree without modifying the tree in\\na file names parsimony-scores.tsv in\\noutdir"
    arg_create_tree: "[ --multiple-placements ] arg (=1) Create a new tree up to this limit for\\neach possibility of parsimony-optimal\\nplacement"
    retain_branch_lengths: "[ --retain-input-branch-lengths ]  Retain the branch lengths from the\\ninput tree in out newick files instead\\nof using number of mutations for the\\nbranch lengths."
    arg_number_use: "[ --threads ] arg (=2)             Number of threads to use when possible\\n[DEFAULT uses all available cores, 2\\ndetected on this machine]"
  }
  output {
    File out_stdout = stdout()
    Directory out_arg_output_directory = "${in_arg_output_directory}"
    File out_argsave_output_mutationannotated = "${in_argsave_output_mutationannotated}"
    File out_collapse_internal_nodes_outputtree = "${in_collapse_internal_nodes_outputtree}"
  }
}