version 1.0

task RunPastapy {
  input {
    Boolean? aligned
    Boolean? auto
    String? datatype
    File? export_config
    File? input_sequence_file
    String? job
    Boolean? keep_alignment_temps
    Boolean? keep_temp
    String? missing
    Boolean? multilocus
    Boolean? ra_xml_search_after
    File? temporaries
    File? times_file
    File? tree_file
    Boolean? two_phase
    Boolean? untrusted
    Boolean? blind_after_iter_without_imp
    Boolean? blind_after_time_without_imp
    Boolean? blind_after_total_iter
    Boolean? blind_after_total_time
    Boolean? no_blind_mode_is_final
    Boolean? move_to_blind_on_worse_score
    String? break_strategy
    Boolean? max_subproblem_frac
    Boolean? max_subproblem_size
    Directory? output_directory
    Boolean? no_return_final_tree_and_alignment
    Boolean? max_mem_mb
    Boolean? num_cpus
    Boolean? mask_gap_py_sites
    Boolean? start_tree_search_from_current
    Boolean? after_blind_iter_term_limit
    Boolean? after_blind_iter_without_imp_limit
    Boolean? after_blind_time_term_limit
    Boolean? after_blind_time_without_imp_limit
    Boolean? iter_limit
    Boolean? iter_without_imp_limit
    Boolean? time_limit
    Boolean? time_without_imp_limit
    String? aligner
    String? merger
    String? tree_estimator
    String pasta
    String performs
    String iterative
    String realignment
    String and
    String tree
    String inference
  }
  command <<<
    run_pasta_py \
      ~{pasta} \
      ~{performs} \
      ~{iterative} \
      ~{realignment} \
      ~{and} \
      ~{tree} \
      ~{inference} \
      ~{if (aligned) then "--aligned" else ""} \
      ~{if (auto) then "--auto" else ""} \
      ~{if defined(datatype) then ("--datatype " +  '"' + datatype + '"') else ""} \
      ~{if defined(export_config) then ("--exportconfig " +  '"' + export_config + '"') else ""} \
      ~{if defined(input_sequence_file) then ("--input " +  '"' + input_sequence_file + '"') else ""} \
      ~{if defined(job) then ("--job " +  '"' + job + '"') else ""} \
      ~{if (keep_alignment_temps) then "--keepalignmenttemps" else ""} \
      ~{if (keep_temp) then "--keeptemp" else ""} \
      ~{if defined(missing) then ("--missing " +  '"' + missing + '"') else ""} \
      ~{if (multilocus) then "--multilocus" else ""} \
      ~{if (ra_xml_search_after) then "--raxml-search-after" else ""} \
      ~{if defined(temporaries) then ("--temporaries " +  '"' + temporaries + '"') else ""} \
      ~{if defined(times_file) then ("--timesfile " +  '"' + times_file + '"') else ""} \
      ~{if defined(tree_file) then ("--treefile " +  '"' + tree_file + '"') else ""} \
      ~{if (two_phase) then "--two-phase" else ""} \
      ~{if (untrusted) then "--untrusted" else ""} \
      ~{if (blind_after_iter_without_imp) then "--blind-after-iter-without-imp" else ""} \
      ~{if (blind_after_time_without_imp) then "--blind-after-time-without-imp" else ""} \
      ~{if (blind_after_total_iter) then "--blind-after-total-iter" else ""} \
      ~{if (blind_after_total_time) then "--blind-after-total-time" else ""} \
      ~{if (no_blind_mode_is_final) then "--no-blind-mode-is-final" else ""} \
      ~{if (move_to_blind_on_worse_score) then "--move-to-blind-on-worse-score" else ""} \
      ~{if defined(break_strategy) then ("--break-strategy " +  '"' + break_strategy + '"') else ""} \
      ~{if (max_subproblem_frac) then "--max-subproblem-frac" else ""} \
      ~{if (max_subproblem_size) then "--max-subproblem-size" else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if (no_return_final_tree_and_alignment) then "--no-return-final-tree-and-alignment" else ""} \
      ~{if (max_mem_mb) then "--max-mem-mb" else ""} \
      ~{if (num_cpus) then "--num-cpus" else ""} \
      ~{if (mask_gap_py_sites) then "--mask-gappy-sites" else ""} \
      ~{if (start_tree_search_from_current) then "--start-tree-search-from-current" else ""} \
      ~{if (after_blind_iter_term_limit) then "--after-blind-iter-term-limit" else ""} \
      ~{if (after_blind_iter_without_imp_limit) then "--after-blind-iter-without-imp-limit" else ""} \
      ~{if (after_blind_time_term_limit) then "--after-blind-time-term-limit" else ""} \
      ~{if (after_blind_time_without_imp_limit) then "--after-blind-time-without-imp-limit" else ""} \
      ~{if (iter_limit) then "--iter-limit" else ""} \
      ~{if (iter_without_imp_limit) then "--iter-without-imp-limit" else ""} \
      ~{if (time_limit) then "--time-limit" else ""} \
      ~{if (time_without_imp_limit) then "--time-without-imp-limit" else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if defined(merger) then ("--merger " +  '"' + merger + '"') else ""} \
      ~{if defined(tree_estimator) then ("--tree-estimator " +  '"' + tree_estimator + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    aligned: "If used, then the input file be will treated as\\naligned for the purposes of the first round of tree\\ninference (the algorithm will start with tree\\nsearching on the input before re-aligning). This\\noption only applies if a starting tree is NOT given."
    auto: "This option is mostly for backward compatibility. If\\nused, then automatically identified default values for\\nthe max_subproblem_size, number of cpus, tools,\\nbreaking strategy, masking criteria, and stopping\\ncriteria will be used. This is just like using the\\ndefault options. However, [WARNING] when auto option\\nis used PASTA overrides the value of these options\\neven if you have supplied them; we recommend that you\\nrun this option with --exportconfig to see the exact\\nset of options that will be used in your analysis."
    datatype: "Specify DNA, RNA, or Protein to indicate what type of\\ndata is specified. Note that this option is NOT\\nautomatically determined [default: dna]"
    export_config: "Export the configuration to the specified file and\\nexit. This is useful if you want to combine several\\nconfigurations and command line settings into a single\\nconfiguration file to be used in other analyses."
    input_sequence_file: "input sequence file"
    job: "job name [pastajob]"
    keep_alignment_temps: "Keep even the realignment temporary running files\\n(this only has an effect if keeptemp is also\\nselected)."
    keep_temp: "Keep temporary running files? [default: disabled]"
    missing: "How to deal with missing data symbols. Specify either\\n\\\"Ambiguous\\\" or \\\"Absent\\\" if the input data contains\\n?-symbols"
    multilocus: "Analyze multi-locus data? NOT SUPPORTED IN CURRENT\\nPASTA version."
    ra_xml_search_after: "If used, the completion of the PASTA algorithm will be\\nfollowed by a tree search using RAxML on the masked\\nalignment. This can be useful if a very fast and\\napproximate tree estimator is used during the PASTA\\nalgorithm. [default: disabled]"
    temporaries: "directory that will be the parent for this job's\\ntemporary file [default in PASTA home]"
    times_file: "optional file that will store the times of events\\nduring the PASTA run. If the file exists, new lines\\nwill be"
    tree_file: "starting tree file"
    two_phase: "If used, then the program will not perform the PASTA\\nalgorithm. Instead it will simply call the sequence\\naligner to align the entire dataset then will call the\\ntree estimator to obtain the tree."
    untrusted: "If used, then the data in the input file will be\\nparsed using a more careful procedure. This will\\ngenerate more helpful error messages, but will use\\nmore memory and be much slower for large inputs. If\\nthis option is omitted, the error messages resulting\\nfrom invalid input data will be more cryptic."
    blind_after_iter_without_imp: "=#\\nMaximum number of iterations without an improvement in\\nlikelihood score that PASTA will run before switching\\nto blind mode. [default: disabled]"
    blind_after_time_without_imp: "=#.#\\nMaximum time (in seconds) that PASTA will run without\\nan improvement in likelihood score before switching to\\nblind mode. [default: disabled]"
    blind_after_total_iter: "=#\\nMaximum number of iterations that PASTA will run\\nbefore switching to blind mode. [default: 0]"
    blind_after_total_time: "=#.#\\nMaximum time (in seconds) that PASTA will run before\\nswitching to blind mode. [default: disabled]"
    no_blind_mode_is_final: "When the blind mode is final, then PASTA will never\\nleave blind mode once it is has entered blind mode."
    move_to_blind_on_worse_score: "If True then PASTA will move to the blind mode as soon\\nit encounters a tree/alignment pair with a worse\\nscore. This is essentially the same as running in\\nblind mode from the beginning, but it does allow one\\nto terminate a run at an interval from the first time\\nthe algorithm fails to improve the score."
    break_strategy: "The method for choosing an edge when bisecting the\\ntree during decomposition [default: centroid]"
    max_subproblem_frac: "=#.#\\nThe maximum size (number of leaves) of subproblems\\nspecified in terms as a proportion of the total number\\nof leaves.  When a subproblem contains this number of\\nleaves (or fewer), then it will not be decomposed\\nfurther. [default: automatically picked based on\\nalignment size]"
    max_subproblem_size: "=#\\nThe maximum size (number of leaves) of subproblems.\\nWhen a subproblem contains this number of leaves (or\\nfewer), then it will not be decomposed further.\\n[default: automatically picked based on alignment\\nsize]"
    output_directory: "directory for output files (defaults to input file\\ndirectory)"
    no_return_final_tree_and_alignment: "Return the best likelihood tree and alignment pair\\ninstead of those from the last iteration; this is\\ndiscouraged with masking option enabled."
    max_mem_mb: "=#      The maximum memory available to OPAL (for the Java\\nheap size when running Java tools)."
    num_cpus: "=#        The number of processing cores that you would like to\\nassign to PASTA.  This number should not exceed the\\nnumber of cores on your machine. [default: number of\\ncores available on the machine]"
    mask_gap_py_sites: "=#\\nThe minimum number of non-gap characters required in\\neach column passed to the tree estimation step.\\nColumns with fewer non-gap characters than the given\\nthreshold will be masked out before passing the\\nalignment into the tree estimation module. These\\ncolumns will be present in the final alignment.\\n[default: 0.1% of alignment size]"
    start_tree_search_from_current: "If selected that the tree from the previous iteration\\nwill be given to the tree searching tool as a starting\\ntree."
    after_blind_iter_term_limit: "=#\\nThe maximum number of iteration that the PASTA\\nalgorithm will run after PASTA has entered blind mode.\\nIf the number is less than 1, then no iteration limit\\nwill be used. [default: disabled]"
    after_blind_iter_without_imp_limit: "=#\\nThe maximum number of iterations without an\\nimprovement in score that the PASTA algorithm will run\\nafter entering BLIND mode.  If the number is less than\\n1, then no iteration limit will be used. [default:\\ndisabled]"
    after_blind_time_term_limit: "=#.#\\nMaximum time (in seconds) that PASTA will continue\\nstarting new iterations of realigning and tree\\nsearching after PASTA has entered blind mode. If the\\nnumber is less than 0, then no time limit will be\\nused. [default: disabled]"
    after_blind_time_without_imp_limit: "=#.#\\nMaximum time (in seconds) since the last improvement\\nin score that PASTA will continue starting new\\niterations of realigning and tree searching after\\nentering BLIND mode. If the number is less than 0,\\nthen no time limit will be used. [default: disabled]"
    iter_limit: "=#      The maximum number of iteration that the PASTA\\nalgorithm will run.  If the number is less than 1,\\nthen no iteration limit will be used. [default: 3]"
    iter_without_imp_limit: "=#\\nThe maximum number of iterations without an\\nimprovement in score that the PASTA algorithm will\\nrun.  If the number is less than 1, then no iteration\\nlimit will be used. [default: disabled]"
    time_limit: "=#.#    Maximum time (in seconds) that PASTA will continue\\nstarting new iterations of realigning and tree\\nsearching. If the number is less than 0, then no time\\nlimit will be used. [default: disabled]"
    time_without_imp_limit: "=#.#\\nMaximum time (in seconds) since the last improvement\\nin score that PASTA will continue starting new\\niterations of realigning and tree searching. If the\\nnumber is less than 0, then no time limit will be\\nused. [default: disabled]"
    aligner: "The name of the alignment program to use for\\nsubproblems. [default: mafft]"
    merger: "The name of the alignment program to use to merge\\nsubproblems. [default: OPAL]"
    tree_estimator: "The name of the tree inference program to use to find\\ntrees on fixed alignments. [default: fasttree]\\n"
    pasta: ""
    performs: ""
    iterative: ""
    realignment: ""
    and: ""
    tree: ""
    inference: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}