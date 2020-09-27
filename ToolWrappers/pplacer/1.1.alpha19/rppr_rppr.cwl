class: CommandLineTool
id: rppr_rppr.cwl
inputs:
- id: in_rp_pr
  doc: check          checks a reference package
  type: string
  inputBinding:
    position: 0
- id: in_convex_tax_ids
  doc: determines convex tax_ids per-rank in a refpkg
  type: string
  inputBinding:
    position: 1
- id: in_convex_if_y
  doc: identifies minimal leaf set to cut for taxonomic concordance
  type: string
  inputBinding:
    position: 2
- id: in_infer
  doc: infers classifications of unclassified sequences in a reference package
  type: string
  inputBinding:
    position: 3
- id: in_info
  doc: gives information about a reference package
  type: string
  inputBinding:
    position: 4
- id: in_min_a_dcl
  doc: finds a good collection of sequences to cut from a placefile's ref tree
  type: string
  inputBinding:
    position: 5
- id: in_min_a_dcl_tree
  doc: finds a good collection of sequences to cut from a tree
  type: string
  inputBinding:
    position: 6
- id: in_pd_prune
  doc: prunes the tree to maximize PD
  type: string
  inputBinding:
    position: 7
- id: in_prep_db
  doc: makes SQL enabling taxonomic querying of placement results
  type: string
  inputBinding:
    position: 8
- id: in_prep_sim
  doc: makes a simulation by taking out taxids and turning them into fake placements
  type: string
  inputBinding:
    position: 9
- id: in_re_class
  doc: reclassifies nonconvex sequences in a reference package
  type: string
  inputBinding:
    position: 10
- id: in_ref_tree
  doc: writes a taxonomically annotated reference tree and an induced taxonomic tree
  type: string
  inputBinding:
    position: 11
- id: in_re_root
  doc: reroots a given reference package in place
  type: string
  inputBinding:
    position: 12
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rppr
- rppr
