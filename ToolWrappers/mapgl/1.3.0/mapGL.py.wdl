version 1.0

task MapGLpy {
  input {
    File? output_file_default
    Float? threshold
    Int? gap
    String? verbose
    Boolean? drop_split
    String? in_format
    Boolean? full_labels
    Boolean? no_prune
    String? priority
    String input_regions_process
    String tree
    String qname
    String t_name
    String alignments
  }
  command <<<
    mapGL_py \
      ~{input_regions_process} \
      ~{tree} \
      ~{qname} \
      ~{t_name} \
      ~{alignments} \
      ~{if defined(output_file_default) then ("--output " +  '"' + output_file_default + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(gap) then ("--gap " +  '"' + gap + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if (drop_split) then "--drop_split" else ""} \
      ~{if defined(in_format) then ("--in_format " +  '"' + in_format + '"') else ""} \
      ~{if (full_labels) then "--full_labels" else ""} \
      ~{if (no_prune) then "--no_prune" else ""} \
      ~{if defined(priority) then ("--priority " +  '"' + priority + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file_default: "Output file. Default stdout. (default: stdout)"
    threshold: "Mapping threshold i.e., |elem| * threshold <=\\n|mapped_elem|. Default = 0.0 -- equivalent to\\naccepting a single-base overlap. On the other end of\\nthe spectrum, setting this value to 1 is equivalent to\\nonly accepting full-length overlaps. (default: 0.0)"
    gap: "Ignore elements with an insertion/deletion of this or\\nbigger size. Using the default value (-1) will allow\\ngaps of any size. (default: -1)"
    verbose: "Verbosity level (default: info)"
    drop_split: "If elements span multiple chains, report them as non-\\nmapping. These will then be reported as gains or\\nlosses, according to the maximum-parsimony\\npredictions. This is the default mapping behavior for\\nbnMapper. By default, mapGL.pys will follow the\\nmapping convention used by liftOver, whereas the\\nlongest mapped alignment is reported for split\\nelements. (default: False)"
    in_format: "Input file format. (Default: BED) (default: BED)"
    full_labels: "Attempt to predict gain/loss events on all branches of\\nthe tree, not just query/target branches. Output will\\ninclude a comma-delimited list of gain/loss events\\nfrom any/all affected branches. (default: False)"
    no_prune: "Do not attempt to disambiguate the root state to\\nresolve ambiguous gain/loss predictions. Instead,\\nlabel affected features as 'ambiguous'. (default:\\nFalse)"
    priority: "When resolving ambiguous trees, prioritize sequence\\ngain or sequence loss. This can be thought of as\\nassigning a lower cost to sequence insertions relative\\nto deletions, or vice-versa. When priority='gain',\\nambiguity is resolved by assigning 0 state to the root\\nnode, such that sequence presence on a descendant\\nbranch will be interpreted as a gain. When\\npriority='loss', ambiguity is resolved by asssigning\\nstate 1 to the root node, such that sequence absence\\nin a descendant node is interpreted as a sequence\\nloss. Default=gain (default: gain)"
    input_regions_process: "Input regions to process. Should be in standard bed\\nformat. Only the first four bed fields will be used."
    tree: "Tree, in standard Newick format, with or without\\nbranch lengths, describing relationships of query and\\ntarget species to outgroups. May be given as a string\\nor file."
    qname: "Name of the query species. Regions from this species\\nwill be mapped to target species coordinates."
    t_name: "Name of the target species. Regions from the query\\nspecies will be mapped to coordinates from this\\nspecies."
    alignments: "Alignment files (.chain or .pkl): One for the target\\nspecies and one per outgroup species. Files should be\\nnamed according to the convention:\\nqname.tname[...].chain.gz, where qname is the query\\nspecies name and tname is the name of the\\ntarget/outgroup species. Names used for qname and\\ntname must match names used in the newick tree."
  }
  output {
    File out_stdout = stdout()
    File out_output_file_default = "${in_output_file_default}"
  }
}