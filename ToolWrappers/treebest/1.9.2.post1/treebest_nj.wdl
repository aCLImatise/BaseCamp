version 1.0

task TreebestNj {
  input {
    File? constrained_trees_nh
    File? tree_to_compared
    File? species_tree_nh
    File? ingroup_list_file
    String? codon_nt_ntmm
    Int? time_limit_seconds
    Int? bootstrapping_times
    Int? quality_cutoff
    String? outgroup_tree_cutting
    Boolean? treat_first_tree
    Boolean? use_leaves_constrained
    Boolean? apply_alignment_mask
    Boolean? mask_aligned_segments
    Boolean? collapse_alternative_splicing
    Boolean? do_apply_leafreordering
    Boolean? root_node_putative
    Boolean? branch_mode_used
    Boolean? input_alignment_stored
    Boolean? wipe_sdi_information
    Boolean? copy_branch_support
    Boolean? verbose_output
    String nt_mm
    String dn
    String ds
    String dm
    String mm
    String jtt
    String kimura
  }
  command <<<
    treebest nj \
      ~{nt_mm} \
      ~{dn} \
      ~{ds} \
      ~{dm} \
      ~{mm} \
      ~{jtt} \
      ~{kimura} \
      ~{if defined(constrained_trees_nh) then ("-c " +  '"' + constrained_trees_nh + '"') else ""} \
      ~{if defined(tree_to_compared) then ("-m " +  '"' + tree_to_compared + '"') else ""} \
      ~{if defined(species_tree_nh) then ("-s " +  '"' + species_tree_nh + '"') else ""} \
      ~{if defined(ingroup_list_file) then ("-l " +  '"' + ingroup_list_file + '"') else ""} \
      ~{if defined(codon_nt_ntmm) then ("-t " +  '"' + codon_nt_ntmm + '"') else ""} \
      ~{if defined(time_limit_seconds) then ("-T " +  '"' + time_limit_seconds + '"') else ""} \
      ~{if defined(bootstrapping_times) then ("-b " +  '"' + bootstrapping_times + '"') else ""} \
      ~{if defined(quality_cutoff) then ("-F " +  '"' + quality_cutoff + '"') else ""} \
      ~{if defined(outgroup_tree_cutting) then ("-o " +  '"' + outgroup_tree_cutting + '"') else ""} \
      ~{if (treat_first_tree) then "-S" else ""} \
      ~{if (use_leaves_constrained) then "-C" else ""} \
      ~{if (apply_alignment_mask) then "-M" else ""} \
      ~{if (mask_aligned_segments) then "-N" else ""} \
      ~{if (collapse_alternative_splicing) then "-g" else ""} \
      ~{if (do_apply_leafreordering) then "-R" else ""} \
      ~{if (root_node_putative) then "-p" else ""} \
      ~{if (branch_mode_used) then "-a" else ""} \
      ~{if (input_alignment_stored) then "-A" else ""} \
      ~{if (wipe_sdi_information) then "-W" else ""} \
      ~{if (copy_branch_support) then "-I" else ""} \
      ~{if (verbose_output) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    constrained_trees_nh: "constrained tree(s) in NH format [null]"
    tree_to_compared: "tree to be compared [null]"
    species_tree_nh: "species tree in NH format [default taxa tree]"
    ingroup_list_file: "ingroup list file [null]"
    codon_nt_ntmm: "codon NT: ntmm, dn, ds, dm; AA: mm, jtt, kimura [mm]"
    time_limit_seconds: "time limit in seconds [no limit]"
    bootstrapping_times: "bootstrapping times [100]"
    quality_cutoff: "quality cut-off [15]"
    outgroup_tree_cutting: "outgroup for tree cutting [Bilateria]"
    treat_first_tree: "treat the first constrained tree as the original tree"
    use_leaves_constrained: "use the leaves of constrained trees as ingroup"
    apply_alignment_mask: "do not apply alignment mask"
    mask_aligned_segments: "do not mask poorly aligned segments"
    collapse_alternative_splicing: "collapse alternative splicing"
    do_apply_leafreordering: "do not apply leaf-reordering"
    root_node_putative: "the root node is a putative node"
    branch_mode_used: "branch mode that is used by most tree-builder"
    input_alignment_stored: "the input alignment is stored in ALN format"
    wipe_sdi_information: "wipe out root (SDI information will be lost!)"
    copy_branch_support: "copy the branch support tags from the constrained tree"
    verbose_output: "verbose output"
    nt_mm: "p-distance (codon alignment)"
    dn: "non-synonymous distance"
    ds: "synonymous distance"
    dm: "dn-ds merge (tree merge)"
    mm: "p-distance (amino acid alignment)"
    jtt: "JTT model (maximum likelihood)"
    kimura: "mm + Kimura's correction"
  }
  output {
    File out_stdout = stdout()
  }
}