class: CommandLineTool
id: ../../../rppr.cwl
inputs:
- id: cmds
  doc: Print a list of the available commands.
  type: boolean
  inputBinding:
    prefix: --cmds
- id: batch
  doc: Run the provided batch file of guppy commands
  type: boolean
  inputBinding:
    prefix: --batch
- id: quiet
  doc: Don't write messages to stdout (unless explicitly requested).
  type: boolean
  inputBinding:
    prefix: --quiet
- id: help
  doc: Display this list of options and subcommands
  type: boolean
  inputBinding:
    prefix: -help
- id: rp_pr
  doc: check          checks a reference package convex_taxids  determines convex
    tax_ids per-rank in a refpkg convexify      identifies minimal leaf set to cut
    for taxonomic concordance infer          infers classifications of unclassified
    sequences in a reference package info           gives information about a reference
    package min_adcl       finds a good collection of sequences to cut from a placefile's
    ref tree min_adcl_tree  finds a good collection of sequences to cut from a tree
    pdprune        prunes the tree to maximize PD prep_db        makes SQL enabling
    taxonomic querying of placement results prepsim        makes a simulation by taking
    out taxids and turning them into fake placements reclass        reclassifies nonconvex
    sequences in a reference package ref_tree       writes a taxonomically annotated
    reference tree and an induced taxonomic tree reroot         reroots a given reference
    package in place
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- rppr
