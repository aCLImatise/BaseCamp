class: CommandLineTool
id: phylophlan_strain_finder.cwl
inputs:
- id: in_input
  doc: "Specify the file of the phylogenetic tree as generated\nfrom phylophlan.py\
    \ (default: None)"
  type: File?
  inputBinding:
    prefix: --input
- id: in_mutation_rates
  doc: "Specify the file of the mutation rates as generated\nfrom phylophlan.py (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --mutation_rates
- id: in_phylo_thr
  doc: "Maximum phylogenetic distance threshold for every pair\nof nodes in the same\
    \ subtree (inclusive) (default:\n0.05)"
  type: double?
  inputBinding:
    prefix: --phylo_thr
- id: in_mut_rate_thr
  doc: "Maximum mutation rate ratio for every pair of nodes in\nthe same subtree (inclusive)\
    \ (default: 0.05)"
  type: double?
  inputBinding:
    prefix: --mutrate_thr
- id: in_tree_format
  doc: 'Specify the format of the input tree (default: newick)'
  type: string?
  inputBinding:
    prefix: --tree_format
- id: in_output
  doc: "Specify the output filename, if not specified will be\nstdout (default: None)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_overwrite
  doc: 'Overwrite the output file if exists (default: False)'
  type: File?
  inputBinding:
    prefix: --overwrite
- id: in_specify_separator_use
  doc: "{;,,,      }, --separator {;,,,    }\nSpecify the separator to use in the\
    \ output (default: )"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_citation
  doc: Show citation
  type: boolean?
  inputBinding:
    prefix: --citation
- id: in_verbose
  doc: 'Write more stuff (default: False)'
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Specify the output filename, if not specified will be\nstdout (default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_overwrite
  doc: 'Overwrite the output file if exists (default: False)'
  type: File?
  outputBinding:
    glob: $(inputs.in_overwrite)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phylophlan:3.0.2--py_0
cwlVersion: v1.1
baseCommand:
- phylophlan_strain_finder
