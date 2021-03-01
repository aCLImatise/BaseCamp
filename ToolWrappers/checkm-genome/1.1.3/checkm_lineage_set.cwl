class: CommandLineTool
id: checkm_lineage_set.cwl
inputs:
- id: in_unique
  doc: 'minimum number of unique phylogenetic markers required to use lineage-specific
    marker set (default: 10)'
  type: long?
  inputBinding:
    prefix: --unique
- id: in_multi
  doc: 'maximum number of multi-copy phylogenetic markers before defaulting to domain-level
    marker set (default: 10)'
  type: long?
  inputBinding:
    prefix: --multi
- id: in_force_domain
  doc: use domain-level sets for all bins
  type: boolean?
  inputBinding:
    prefix: --force_domain
- id: in_no_refinement
  doc: do not perform lineage-specific marker set refinement
  type: boolean?
  inputBinding:
    prefix: --no_refinement
- id: in_quiet
  doc: suppress console output
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_tmpdir
  doc: specify an alternative directory for temporary files
  type: Directory?
  inputBinding:
    prefix: --tmpdir
- id: in_tree_dir
  doc: directory specified during tree command
  type: string
  inputBinding:
    position: 0
- id: in_marker_file
  doc: output file describing marker set for each bin
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/checkm-genome:1.1.3--py_1
cwlVersion: v1.1
baseCommand:
- checkm
- lineage_set
