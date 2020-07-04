version 1.0

task PhyloBoot {
  input {
    String? read_mods
    String? output_average
    Boolean? quiet
    String? in_it_model
    Boolean? in_it_random
    String? scale
    String? subtree
    String? subtree_scale
    String? subtree_switch
    File? scale_file
    String model_fname
  }
  command <<<
    phyloBoot \
      ~{model_fname} \
      ~{if defined(read_mods) then ("--read-mods " +  '"' + read_mods + '"') else ""} \
      ~{if defined(output_average) then ("--output-average " +  '"' + output_average + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(in_it_model) then ("--init-model " +  '"' + in_it_model + '"') else ""} \
      ~{true="--init-random" false="" in_it_random} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""} \
      ~{if defined(subtree) then ("--subtree " +  '"' + subtree + '"') else ""} \
      ~{if defined(subtree_scale) then ("--subtree-scale " +  '"' + subtree_scale + '"') else ""} \
      ~{if defined(subtree_switch) then ("--subtree-switch " +  '"' + subtree_switch + '"') else ""} \
      ~{if defined(scale_file) then ("--scale-file " +  '"' + scale_file + '"') else ""}
  >>>
  parameter_meta {
    read_mods: "Read estimated models from list of filenames instead of generating alignments and estimating parameters.  fname_list can be comma- delimited list of files, or, if preceded by a '*', the name of a  file containing the file names (one per line).  Can be used to compute statistics for replicates that have been processed separately (see --alignments-only).  When this option is used, the primary argument to the program (<model_fname>|<msa_fname>) will be ignored."
    output_average: "Output a tree model representing the average of all input models to the specified file."
    quiet: "Proceed quietly."
    in_it_model: "Initialize optimization procedure with specified tree model."
    in_it_random: "Initialize parameters randomly."
    scale: "Scale input tree by factor rho before doing parametric simulations."
    subtree: "For use with --subtree-scale and/or subtree-switch.  Define  subtree including all children of named node, including branch  leading up to node."
    subtree_scale: "Scale subtree defined with --subtree option by factor lambda."
    subtree_switch: "With given probability, randomly switch branches in tree from subtree to supertree and vice versa.  Randomization is performed independently for each branch in every column of simulated data."
    scale_file: "(For use with --subtree in parametric mode).  Instead of using  --subtree-scale or --scale, read in a tab-delimited file with  three columns: numSite,scale,subtree_scale.  For each row in the  file phyloBoot will simulate the given number of sites with those  scaling factors, and then will move on to the next row, so that the  total number of sites is the sum of the first column."
    model_fname: ""
  }
}