class: CommandLineTool
id: Trinity_gene_splice_modeler.py.cwl
inputs:
- id: trinity_fast_a
  doc: 'Trinity.fasta file (default: )'
  type: string
  inputBinding:
    prefix: --trinity_fasta
- id: out_prefix
  doc: 'output prefix for fasta and gtf outputs (default: trinity_genes)'
  type: string
  inputBinding:
    prefix: --out_prefix
- id: incl_malign
  doc: 'include multiple alignment formatted output file (default: False)'
  type: boolean
  inputBinding:
    prefix: --incl_malign
- id: debug
  doc: 'debug mode (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: verbose
  doc: 'verbose mode (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: no_squeeze
  doc: "don't merge unbranched stretches of node identifiers (default: False)"
  type: boolean
  inputBinding:
    prefix: --no_squeeze
- id: no_refinement
  doc: "don't refine splice graph by further collapsing allelic variants (default:\
    \ False)"
  type: boolean
  inputBinding:
    prefix: --no_refinement
- id: incl_cdna
  doc: 'rewrite Trinity fasta file using simplified graph structure (default: False)'
  type: boolean
  inputBinding:
    prefix: --incl_cdna
- id: incl_dot
  doc: 'include dot file for gene graph (*warning* single dot file per gene!! use
    sparingly) (default: False)'
  type: boolean
  inputBinding:
    prefix: --incl_dot
- id: restrict_gene_id
  doc: 'only process this gene (default: None)'
  type: string
  inputBinding:
    prefix: --restrict_gene_id
outputs: []
cwlVersion: v1.1
baseCommand:
- Trinity_gene_splice_modeler.py
