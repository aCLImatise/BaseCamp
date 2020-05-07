class: CommandLineTool
id: refinem_taxon_filter.cwl
inputs:
- id: tax_on_profile_dir
  doc: directory with results of taxon_profile command
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: file indicating divergent scaffolds
  type: string
  inputBinding:
    position: 1
- id: consensus_tax_on
  doc: 'threshold for accepting a consensus taxon (default: 50.0)'
  type: string
  inputBinding:
    prefix: --consensus_taxon
- id: trusted_scaffold
  doc: 'threshold for treating a scaffold as trusted (default: 50.0)'
  type: string
  inputBinding:
    prefix: --trusted_scaffold
- id: common_tax_a
  doc: 'threshold for treating a taxon as common (default: 5.0)'
  type: string
  inputBinding:
    prefix: --common_taxa
- id: congruent_scaffold
  doc: 'threshold for treating a scaffold as congruent (default: 10.0)'
  type: string
  inputBinding:
    prefix: --congruent_scaffold
- id: min_classified_per
  doc: 'minimum percentage of genes with a classification to filter a scaffold (default:
    25.0)'
  type: long
  inputBinding:
    prefix: --min_classified_per
- id: min_classified
  doc: 'minimum number of classified genes required to filter a scaffold (default:
    5)'
  type: long
  inputBinding:
    prefix: --min_classified
- id: consensus_scaffold
  doc: 'threshold of consensus taxon for filtering a scaffold (default: 50.0)'
  type: string
  inputBinding:
    prefix: --consensus_scaffold
- id: cpus
  doc: 'number of CPUs to use (default: 1)'
  type: string
  inputBinding:
    prefix: --cpus
- id: silent
  doc: suppress output of logger
  type: boolean
  inputBinding:
    prefix: --silent
outputs: []
cwlVersion: v1.1
baseCommand:
- refinem
- taxon_filter
