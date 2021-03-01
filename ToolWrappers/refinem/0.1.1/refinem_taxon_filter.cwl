class: CommandLineTool
id: refinem_taxon_filter.cwl
inputs:
- id: in_consensus_tax_on
  doc: "threshold for accepting a consensus taxon (default:\n50.0)"
  type: double?
  inputBinding:
    prefix: --consensus_taxon
- id: in_trusted_scaffold
  doc: "threshold for treating a scaffold as trusted (default:\n50.0)"
  type: double?
  inputBinding:
    prefix: --trusted_scaffold
- id: in_common_tax_a
  doc: "threshold for treating a taxon as common (default:\n5.0)"
  type: double?
  inputBinding:
    prefix: --common_taxa
- id: in_congruent_scaffold
  doc: "threshold for treating a scaffold as congruent\n(default: 10.0)"
  type: double?
  inputBinding:
    prefix: --congruent_scaffold
- id: in_min_classified_per
  doc: "minimum percentage of genes with a classification to\nfilter a scaffold (default:\
    \ 25.0)"
  type: long?
  inputBinding:
    prefix: --min_classified_per
- id: in_min_classified
  doc: "minimum number of classified genes required to filter\na scaffold (default:\
    \ 5)"
  type: long?
  inputBinding:
    prefix: --min_classified
- id: in_consensus_scaffold
  doc: "threshold of consensus taxon for filtering a scaffold\n(default: 50.0)"
  type: double?
  inputBinding:
    prefix: --consensus_scaffold
- id: in_cpus
  doc: 'number of CPUs to use (default: 1)'
  type: long?
  inputBinding:
    prefix: --cpus
- id: in_silent
  doc: suppress output of logger
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_tax_on_profile_dir
  doc: directory with results of taxon_profile command
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: file indicating divergent scaffolds
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- refinem
- taxon_filter
