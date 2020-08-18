class: CommandLineTool
id: ../../../treerecs.cwl
inputs:
- id: sample_size
  doc: size of the tree sampling (default value = 1).
  type: string
  inputBinding:
    prefix: --sample-size
- id: tree_index
  doc: only consider the VALUE-th gene tree in the gene tree file.
  type: string
  inputBinding:
    prefix: --tree-index
- id: outdir
  doc: 'output directory (default: treerecs_output).'
  type: string
  inputBinding:
    prefix: --outdir
- id: output_format
  doc: 'output format(s): newick(default), nhx, phyloxml, recphyloxml or svg. repeat
    option or use a colon-separated list of formats to get multiple output'
  type: string
  inputBinding:
    prefix: --output-format
- id: force
  doc: force possible overwrite of existing files.
  type: boolean
  inputBinding:
    prefix: --force
- id: sep
  doc: specify separator character for species names embedded in gene names (default
    = '_').
  type: string
  inputBinding:
    prefix: --sep
- id: prefix
  doc: specify whether the species_name is a prefix of gene_name default = N).
  type: string
  inputBinding:
    prefix: --prefix
- id: parallelize
  doc: run in parallel if possible.
  type: boolean
  inputBinding:
    prefix: --parallelize
- id: save_map
  doc: save map(s) used during execution.
  type: boolean
  inputBinding:
    prefix: --save-map
- id: quiet
  doc: silent mode (no print, no progression bar).
  type: boolean
  inputBinding:
    prefix: --quiet
- id: costs_estimation
  doc: estimate duplication and loss costs.
  type: boolean
  inputBinding:
    prefix: --costs-estimation
- id: info
  doc: print informations about genetree(s) with a branch support diagram.
  type: boolean
  inputBinding:
    prefix: --info
- id: case_sensitive
  doc: use case sensitive mapping.
  type: boolean
  inputBinding:
    prefix: --case-sensitive
- id: ale_evaluation
  doc: compute ALE log likelihood for each solution.
  type: boolean
  inputBinding:
    prefix: --ale-evaluation
- id: output_without_description
  doc: strip output from gene tree descriptions.
  type: boolean
  inputBinding:
    prefix: --output-without-description
- id: f_event
  doc: create a file that summarizes orthology/paralogy relationships.
  type: boolean
  inputBinding:
    prefix: --fevent
outputs: []
cwlVersion: v1.1
baseCommand:
- treerecs
