version 1.0

task PhyloBoot {
  input {
    File? tree
    Int? n_sites
    Int? n_reps
    File? msa_format
    File? alignments_only
    String? dump_mods
    File? dump_samples
    File? dump_format
    File? read_mods
    File? output_average
    Boolean? quiet
    Int? subst_mod
    Int? n_rates
    Boolean? em
    String? precision
    String? in_it_model
    Boolean? in_it_random
    String? scale
    String? subtree
    String? subtree_scale
    String? subtree_switch
    File? scale_file
    String options_dot
    String non_par_errors
  }
  command <<<
    phyloBoot \
      ~{options_dot} \
      ~{non_par_errors} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(n_sites) then ("--nsites " +  '"' + n_sites + '"') else ""} \
      ~{if defined(n_reps) then ("--nreps " +  '"' + n_reps + '"') else ""} \
      ~{if defined(msa_format) then ("--msa-format " +  '"' + msa_format + '"') else ""} \
      ~{if defined(alignments_only) then ("--alignments-only " +  '"' + alignments_only + '"') else ""} \
      ~{if defined(dump_mods) then ("--dump-mods " +  '"' + dump_mods + '"') else ""} \
      ~{if defined(dump_samples) then ("--dump-samples " +  '"' + dump_samples + '"') else ""} \
      ~{if defined(dump_format) then ("--dump-format " +  '"' + dump_format + '"') else ""} \
      ~{if defined(read_mods) then ("--read-mods " +  '"' + read_mods + '"') else ""} \
      ~{if defined(output_average) then ("--output-average " +  '"' + output_average + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(subst_mod) then ("--subst-mod " +  '"' + subst_mod + '"') else ""} \
      ~{if defined(n_rates) then ("--nrates " +  '"' + n_rates + '"') else ""} \
      ~{if (em) then "--EM" else ""} \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{if defined(in_it_model) then ("--init-model " +  '"' + in_it_model + '"') else ""} \
      ~{if (in_it_random) then "--init-random" else ""} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""} \
      ~{if defined(subtree) then ("--subtree " +  '"' + subtree + '"') else ""} \
      ~{if defined(subtree_scale) then ("--subtree-scale " +  '"' + subtree_scale + '"') else ""} \
      ~{if defined(subtree_switch) then ("--subtree-switch " +  '"' + subtree_switch + '"') else ""} \
      ~{if defined(scale_file) then ("--scale-file " +  '"' + scale_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tree: "|<tree_string>\\n(Required if non-parametric and more than two species) Name\\nof file or literal string defining tree topology."
    n_sites: "Number of sites in sampled alignments.  If an alignment is\\ngiven (non-parametric case), default is number of sites in\\nalignment, otherwise default is 1000."
    n_reps: "Number of replicates.  Default is 100."
    msa_format: "|PHYLIP|MPM|MAF|SS\\n(non-parametric case only)  Alignment format.  Default is to guess\\nformat from file contents."
    alignments_only: "Generate alignments and write them to files with given filename\\nroot, but do not estimate parameters."
    dump_mods: "Dump .mod files for individual estimated models (one for each\\nreplicate)."
    dump_samples: "Dump simulated alignments to files with given filename root.\\nSimilar to --alignments-only but does not disable parameter\\nestimation."
    dump_format: "|PHYLIP|MPM|SS.\\n(For use with --alignments-only or --dump-samples) File format to\\nuse when dumping raw alignments.  Default FASTA."
    read_mods: "Read estimated models from list of filenames instead of generating\\nalignments and estimating parameters.  fname_list can be comma-\\ndelimited list of files, or, if preceded by a '*', the name of a\\nfile containing the file names (one per line).  Can be used to compute\\nstatistics for replicates that have been processed separately (see\\n--alignments-only).  When this option is used, the primary argument\\nto the program (<model_fname>|<msa_fname>) will be ignored."
    output_average: "Output a tree model representing the average of all input\\nmodels to the specified file."
    quiet: "Proceed quietly."
    subst_mod: "|F81|HKY85|REV|SSREV|UNREST|R2|R2S|U2|U2S|R3|R3S|U3|U3S\\n(default REV).  Nucleotide substitution model."
    n_rates: "(default 1).  Number of rate categories to use.  Specifying a\\nvalue of greater than one causes the discrete gamma model for\\nrate variation to be used."
    em: "Use EM rather than the BFGS quasi-Newton algorithm for parameter\\nestimation."
    precision: "|MED|LOW\\n(default HIGH) Level of precision to use in estimating model\\nparameters."
    in_it_model: "Initialize optimization procedure with specified tree model."
    in_it_random: "Initialize parameters randomly."
    scale: "Scale input tree by factor rho before doing parametric simulations."
    subtree: "For use with --subtree-scale and/or subtree-switch.  Define\\nsubtree including all children of named node, including branch\\nleading up to node."
    subtree_scale: "Scale subtree defined with --subtree option by factor lambda."
    subtree_switch: "With given probability, randomly switch branches in tree from\\nsubtree to supertree and vice versa.  Randomization is performed\\nindependently for each branch in every column of simulated data."
    scale_file: "(For use with --subtree in parametric mode).  Instead of using\\n--subtree-scale or --scale, read in a tab-delimited file with\\nthree columns: numSite,scale,subtree_scale.  For each row in the\\nfile phyloBoot will simulate the given number of sites with those\\nscaling factors, and then will move on to the next row, so that the\\ntotal number of sites is the sum of the first column.\\n"
    options_dot: "EXAMPLES:"
    non_par_errors: "3. Parametric generation of simulated data."
  }
  output {
    File out_stdout = stdout()
  }
}