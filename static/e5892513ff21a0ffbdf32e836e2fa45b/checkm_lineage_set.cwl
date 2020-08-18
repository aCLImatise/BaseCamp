class: CommandLineTool
id: ../../../checkm_lineage_set.cwl
inputs:
- id: unique
  doc: 'minimum number of unique phylogenetic markers required to use lineage-specific
    marker set (default: 10)'
  type: string
  inputBinding:
    prefix: --unique
- id: multi
  doc: 'maximum number of multi-copy phylogenetic markers before defaulting to domain-level
    marker set (default: 10)'
  type: string
  inputBinding:
    prefix: --multi
- id: force_domain
  doc: use domain-level sets for all bins
  type: boolean
  inputBinding:
    prefix: --force_domain
- id: no_refinement
  doc: do not perform lineage-specific marker set refinement
  type: boolean
  inputBinding:
    prefix: --no_refinement
- id: quiet
  doc: suppress console output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: tmpdir
  doc: specify an alternative directory for temporary files
  type: string
  inputBinding:
    prefix: --tmpdir
- id: tree_dir
  doc: directory specified during tree command
  type: string
  inputBinding:
    position: 0
- id: marker_file
  doc: output file describing marker set for each bin
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- checkm
- lineage_set
