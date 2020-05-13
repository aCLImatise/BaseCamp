class: CommandLineTool
id: beta_significance.py.cwl
inputs:
- id: input_path
  doc: input otu table in biom format [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_path
- id: output_path
  doc: output results path [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_path
- id: significance_test
  doc: significance test to use, options are 'unweighted_unifrac', 'weighted_unifrac',
    'weighted_normalized_unifrac', or 'p-test' [REQUIRED]
  type: string
  inputBinding:
    prefix: --significance_test
- id: tree_path
  doc: path to newick tree file [REQUIRED]
  type: string
  inputBinding:
    prefix: --tree_path
outputs: []
cwlVersion: v1.1
baseCommand:
- beta_significance.py
