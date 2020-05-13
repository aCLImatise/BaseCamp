class: CommandLineTool
id: phylophlan_strain_finder.cwl
inputs:
- id: input
  doc: 'Specify the file of the phylogenetic tree as generated from phylophlan.py
    (default: None)'
  type: string
  inputBinding:
    prefix: --input
- id: mutation_rates
  doc: 'Specify the file of the mutation rates as generated from phylophlan.py (default:
    None)'
  type: string
  inputBinding:
    prefix: --mutation_rates
- id: phylo_thr
  doc: 'Maximum phylogenetic distance threshold for every pair of nodes in the same
    subtree (inclusive) (default: 0.05)'
  type: string
  inputBinding:
    prefix: --phylo_thr
- id: mut_rate_thr
  doc: 'Maximum mutation rate ratio for every pair of nodes in the same subtree (inclusive)
    (default: 0.05)'
  type: string
  inputBinding:
    prefix: --mutrate_thr
- id: tree_format
  doc: 'Specify the format of the input tree (default: newick)'
  type: string
  inputBinding:
    prefix: --tree_format
- id: output
  doc: 'Specify the output filename, if not specified will be stdout (default: None)'
  type: string
  inputBinding:
    prefix: --output
- id: overwrite
  doc: 'Overwrite the output file if exists (default: False)'
  type: boolean
  inputBinding:
    prefix: --overwrite
- id: s
  doc: '{;,,,      }, --separator {;,,,    } Specify the separator to use in the output
    (default: )'
  type: boolean
  inputBinding:
    prefix: -s
- id: verbose
  doc: 'Write more stuff (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- phylophlan_strain_finder
