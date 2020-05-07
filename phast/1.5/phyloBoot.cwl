class: CommandLineTool
id: phyloBoot.cwl
inputs:
- id: n_reps
  doc: '500 --nsites 10000 '
  type: boolean
  inputBinding:
    prefix: --nreps
- id: n_reps
  doc: '500 --nsites 10000 '
  type: boolean
  inputBinding:
    prefix: --nreps
- id: read_mods
  doc: Read estimated models from list of filenames instead of generating alignments
    and estimating parameters.  fname_list can be comma- delimited list of files,
    or, if preceded by a '*', the name of a  file containing the file names (one per
    line).  Can be used to compute statistics for replicates that have been processed
    separately (see --alignments-only).  When this option is used, the primary argument
    to the program (<model_fname>|<msa_fname>) will be ignored.
  type: string
  inputBinding:
    prefix: --read-mods
- id: output_average
  doc: Output a tree model representing the average of all input models to the specified
    file.
  type: string
  inputBinding:
    prefix: --output-average
- id: quiet
  doc: Proceed quietly.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_it_model
  doc: Initialize optimization procedure with specified tree model.
  type: string
  inputBinding:
    prefix: --init-model
- id: in_it_random
  doc: Initialize parameters randomly.
  type: boolean
  inputBinding:
    prefix: --init-random
- id: scale
  doc: Scale input tree by factor rho before doing parametric simulations.
  type: string
  inputBinding:
    prefix: --scale
- id: subtree
  doc: For use with --subtree-scale and/or subtree-switch.  Define  subtree including
    all children of named node, including branch  leading up to node.
  type: string
  inputBinding:
    prefix: --subtree
- id: subtree_scale
  doc: Scale subtree defined with --subtree option by factor lambda.
  type: string
  inputBinding:
    prefix: --subtree-scale
- id: subtree_switch
  doc: With given probability, randomly switch branches in tree from subtree to supertree
    and vice versa.  Randomization is performed independently for each branch in every
    column of simulated data.
  type: string
  inputBinding:
    prefix: --subtree-switch
- id: scale_file
  doc: '(For use with --subtree in parametric mode).  Instead of using  --subtree-scale
    or --scale, read in a tab-delimited file with  three columns: numSite,scale,subtree_scale.  For
    each row in the  file phyloBoot will simulate the given number of sites with those  scaling
    factors, and then will move on to the next row, so that the  total number of sites
    is the sum of the first column.'
  type: File
  inputBinding:
    prefix: --scale-file
outputs: []
cwlVersion: v1.1
baseCommand:
- phyloBoot
