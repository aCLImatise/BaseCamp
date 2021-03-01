version 1.0

task PanACoTATree {
  input {
    File? alignment_file_multifasta
    Directory? directory_where_results
    String? soft
    Int? boot
    Int? threads
    Int? model
    Boolean? add_option_you_want_write
    String? mem
    Boolean? verbose
    Boolean? quiet
    String iq_tree_dot
  }
  command <<<
    PanACoTA tree \
      ~{iq_tree_dot} \
      ~{if defined(alignment_file_multifasta) then ("-a " +  '"' + alignment_file_multifasta + '"') else ""} \
      ~{if defined(directory_where_results) then ("-o " +  '"' + directory_where_results + '"') else ""} \
      ~{if defined(soft) then ("--soft " +  '"' + soft + '"') else ""} \
      ~{if defined(boot) then ("--boot " +  '"' + boot + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if (add_option_you_want_write) then "-B" else ""} \
      ~{if defined(mem) then ("--mem " +  '"' + mem + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/panacota:1.2.0--py_0"
  }
  parameter_meta {
    alignment_file_multifasta: "Alignment file in multi-fasta: each header will be a\\nleaf of the inferred tree."
    directory_where_results: "Directory where tree results will be saved."
    soft: "Choose with which software you want to infer the\\nphylogenetic tree. Default is IQtree2 (versions 2.x of\\nIQtree). If you want version 1.x of IQtree, use '-s\\niqtree'"
    boot: "Indicate how many bootstraps you want to compute. By\\ndefault, no bootstrap is calculated. For IQtree, it\\nwill use ultrafast bootstrap (>=1000)."
    threads: "add this option if you want to parallelize on several\\nthreads. Indicate on how many threads you want to\\nparallelize. By default, it uses 1 thread. Put 0 if\\nyou want to use all threads of your computer. Not\\navailable with quicktree."
    model: "Choose your DNA substitution model. Default for\\nFastTree and IQtree: GTR. Default for FastME: TN93.\\nFor FastTree, the choices are 'GTR' and 'JC'. For\\nFastME, choices are: 'p-distance' (or 'p'), 'RY\\nsymmetric' (or 'Y'), 'RY' (or 'R'), 'JC69' (or 'J'),\\n'K2P' (or 'K'), 'F81' (or '1'), 'F84' (or '4'), 'TN93'\\n(or 'T'), 'LogDet' (or 'L'). For IQtree, choices are\\nHKY, JC, F81, K2P, K3P, K81uf, TNef, TIM, TIMef, TVM,\\nTVMef, SYM, GTR."
    add_option_you_want_write: "Add this option if you want to write all bootstrap\\npseudo-trees. Only available with FastME and IQtree."
    mem: "Maximal RAM usage in GB | MB. Only available with"
    verbose: "Increase verbosity in stdout/stderr."
    quiet: "Do not display anything to stdout/stderr. log files\\nwill still be created."
    iq_tree_dot: "-fast                 Use -fast option with iqtree."
  }
  output {
    File out_stdout = stdout()
  }
}