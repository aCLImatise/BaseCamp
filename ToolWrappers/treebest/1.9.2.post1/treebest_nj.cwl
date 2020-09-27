class: CommandLineTool
id: treebest_nj.cwl
inputs:
- id: in_constrained_trees_nh
  doc: constrained tree(s) in NH format [null]
  type: File
  inputBinding:
    prefix: -c
- id: in_tree_to_compared
  doc: tree to be compared [null]
  type: File
  inputBinding:
    prefix: -m
- id: in_species_tree_nh
  doc: species tree in NH format [default taxa tree]
  type: File
  inputBinding:
    prefix: -s
- id: in_ingroup_list_file
  doc: ingroup list file [null]
  type: File
  inputBinding:
    prefix: -l
- id: in_codon_nt_ntmm
  doc: 'codon NT: ntmm, dn, ds, dm; AA: mm, jtt, kimura [mm]'
  type: string
  inputBinding:
    prefix: -t
- id: in_time_limit_seconds
  doc: time limit in seconds [no limit]
  type: long
  inputBinding:
    prefix: -T
- id: in_bootstrapping_times
  doc: bootstrapping times [100]
  type: long
  inputBinding:
    prefix: -b
- id: in_quality_cutoff
  doc: quality cut-off [15]
  type: long
  inputBinding:
    prefix: -F
- id: in_outgroup_tree_cutting
  doc: outgroup for tree cutting [Bilateria]
  type: string
  inputBinding:
    prefix: -o
- id: in_treat_first_tree
  doc: treat the first constrained tree as the original tree
  type: boolean
  inputBinding:
    prefix: -S
- id: in_use_leaves_constrained
  doc: use the leaves of constrained trees as ingroup
  type: boolean
  inputBinding:
    prefix: -C
- id: in_apply_alignment_mask
  doc: do not apply alignment mask
  type: boolean
  inputBinding:
    prefix: -M
- id: in_mask_aligned_segments
  doc: do not mask poorly aligned segments
  type: boolean
  inputBinding:
    prefix: -N
- id: in_collapse_alternative_splicing
  doc: collapse alternative splicing
  type: boolean
  inputBinding:
    prefix: -g
- id: in_do_apply_leafreordering
  doc: do not apply leaf-reordering
  type: boolean
  inputBinding:
    prefix: -R
- id: in_root_node_putative
  doc: the root node is a putative node
  type: boolean
  inputBinding:
    prefix: -p
- id: in_branch_mode_used
  doc: branch mode that is used by most tree-builder
  type: boolean
  inputBinding:
    prefix: -a
- id: in_input_alignment_stored
  doc: the input alignment is stored in ALN format
  type: boolean
  inputBinding:
    prefix: -A
- id: in_wipe_information_lost
  doc: wipe out root (SDI information will be lost!)
  type: boolean
  inputBinding:
    prefix: -W
- id: in_copy_support_tags
  doc: copy the branch support tags from the constrained tree
  type: boolean
  inputBinding:
    prefix: -I
- id: in_verbose_output
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: -v
- id: in_nt_mm
  doc: p-distance (codon alignment)
  type: string
  inputBinding:
    position: 0
- id: in_dn
  doc: non-synonymous distance
  type: string
  inputBinding:
    position: 1
- id: in_ds
  doc: synonymous distance
  type: string
  inputBinding:
    position: 2
- id: in_dm
  doc: dn-ds merge (tree merge)
  type: string
  inputBinding:
    position: 3
- id: in_mm
  doc: p-distance (amino acid alignment)
  type: string
  inputBinding:
    position: 4
- id: in_jtt
  doc: JTT model (maximum likelihood)
  type: string
  inputBinding:
    position: 5
- id: in_kimura
  doc: mm + Kimura's correction
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- treebest
- nj
