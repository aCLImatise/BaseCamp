class: CommandLineTool
id: phyloBoot.cwl
inputs:
- id: in_tree
  doc: "|<tree_string>\n(Required if non-parametric and more than two species) Name\n\
    of file or literal string defining tree topology."
  type: File
  inputBinding:
    prefix: --tree
- id: in_n_reps
  doc: Number of replicates.  Default is 100.
  type: long
  inputBinding:
    prefix: --nreps
- id: in_msa_format
  doc: "|PHYLIP|MPM|MAF|SS\n(non-parametric case only)  Alignment format.  Default\
    \ is to guess\nformat from file contents."
  type: File
  inputBinding:
    prefix: --msa-format
- id: in_alignments_only
  doc: "Generate alignments and write them to files with given filename\nroot, but\
    \ do not estimate parameters."
  type: File
  inputBinding:
    prefix: --alignments-only
- id: in_dump_mods
  doc: "Dump .mod files for individual estimated models (one for each\nreplicate)."
  type: string
  inputBinding:
    prefix: --dump-mods
- id: in_dump_samples
  doc: "Dump simulated alignments to files with given filename root.\nSimilar to --alignments-only\
    \ but does not disable parameter\nestimation."
  type: File
  inputBinding:
    prefix: --dump-samples
- id: in_dump_format
  doc: "|PHYLIP|MPM|SS.\n(For use with --alignments-only or --dump-samples) File format\
    \ to\nuse when dumping raw alignments.  Default FASTA."
  type: File
  inputBinding:
    prefix: --dump-format
- id: in_read_mods
  doc: "Read estimated models from list of filenames instead of generating\nalignments\
    \ and estimating parameters.  fname_list can be comma-\ndelimited list of files,\
    \ or, if preceded by a '*', the name of a\nfile containing the file names (one\
    \ per line).  Can be used to compute\nstatistics for replicates that have been\
    \ processed separately (see\n--alignments-only).  When this option is used, the\
    \ primary argument\nto the program (<model_fname>|<msa_fname>) will be ignored."
  type: File
  inputBinding:
    prefix: --read-mods
- id: in_output_average
  doc: "Output a tree model representing the average of all input\nmodels to the specified\
    \ file."
  type: File
  inputBinding:
    prefix: --output-average
- id: in_quiet
  doc: Proceed quietly.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_subst_mod
  doc: "|F81|HKY85|REV|SSREV|UNREST|R2|R2S|U2|U2S|R3|R3S|U3|U3S\n(default REV).  Nucleotide\
    \ substitution model."
  type: long
  inputBinding:
    prefix: --subst-mod
- id: in_n_rates
  doc: "(default 1).  Number of rate categories to use.  Specifying a\nvalue of greater\
    \ than one causes the discrete gamma model for\nrate variation to be used."
  type: long
  inputBinding:
    prefix: --nrates
- id: in_em
  doc: "Use EM rather than the BFGS quasi-Newton algorithm for parameter\nestimation."
  type: boolean
  inputBinding:
    prefix: --EM
- id: in_precision
  doc: "|MED|LOW\n(default HIGH) Level of precision to use in estimating model\nparameters."
  type: string
  inputBinding:
    prefix: --precision
- id: in_in_it_model
  doc: Initialize optimization procedure with specified tree model.
  type: string
  inputBinding:
    prefix: --init-model
- id: in_in_it_random
  doc: Initialize parameters randomly.
  type: boolean
  inputBinding:
    prefix: --init-random
- id: in_scale
  doc: Scale input tree by factor rho before doing parametric simulations.
  type: string
  inputBinding:
    prefix: --scale
- id: in_subtree
  doc: "For use with --subtree-scale and/or subtree-switch.  Define\nsubtree including\
    \ all children of named node, including branch\nleading up to node."
  type: string
  inputBinding:
    prefix: --subtree
- id: in_subtree_scale
  doc: Scale subtree defined with --subtree option by factor lambda.
  type: string
  inputBinding:
    prefix: --subtree-scale
- id: in_subtree_switch
  doc: "With given probability, randomly switch branches in tree from\nsubtree to\
    \ supertree and vice versa.  Randomization is performed\nindependently for each\
    \ branch in every column of simulated data."
  type: string
  inputBinding:
    prefix: --subtree-switch
- id: in_scale_file
  doc: "(For use with --subtree in parametric mode).  Instead of using\n--subtree-scale\
    \ or --scale, read in a tab-delimited file with\nthree columns: numSite,scale,subtree_scale.\
    \  For each row in the\nfile phyloBoot will simulate the given number of sites\
    \ with those\nscaling factors, and then will move on to the next row, so that\
    \ the\ntotal number of sites is the sum of the first column.\n"
  type: File
  inputBinding:
    prefix: --scale-file
- id: in_options_dot
  doc: 'EXAMPLES:'
  type: string
  inputBinding:
    position: 0
- id: in_non_par_errors
  doc: 3. Parametric generation of simulated data.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyloBoot
