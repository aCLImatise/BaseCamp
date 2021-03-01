class: CommandLineTool
id: Trinity_gene_splice_modeler.py.cwl
inputs:
- id: in_trinity_fast_a
  doc: 'Trinity.fasta file (default: )'
  type: File?
  inputBinding:
    prefix: --trinity_fasta
- id: in_out_prefix
  doc: "output prefix for fasta and gtf outputs (default:\ntrinity_genes)"
  type: string?
  inputBinding:
    prefix: --out_prefix
- id: in_incl_malign
  doc: "include multiple alignment formatted output file\n(default: False)"
  type: File?
  inputBinding:
    prefix: --incl_malign
- id: in_debug
  doc: 'debug mode (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_verbose
  doc: 'verbose mode (default: False)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_no_squeeze
  doc: "don't merge unbranched stretches of node identifiers\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --no_squeeze
- id: in_no_refinement
  doc: "don't refine splice graph by further collapsing\nallelic variants (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --no_refinement
- id: in_incl_cdna
  doc: "rewrite Trinity fasta file using simplified graph\nstructure (default: False)"
  type: boolean?
  inputBinding:
    prefix: --incl_cdna
- id: in_incl_dot
  doc: "include dot file for gene graph (*warning* single dot\nfile per gene!! use\
    \ sparingly) (default: False)"
  type: boolean?
  inputBinding:
    prefix: --incl_dot
- id: in_restrict_gene_id
  doc: "only process this gene (default: None)\n"
  type: string?
  inputBinding:
    prefix: --restrict_gene_id
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_incl_malign
  doc: "include multiple alignment formatted output file\n(default: False)"
  type: File?
  outputBinding:
    glob: $(inputs.in_incl_malign)
hints: []
cwlVersion: v1.1
baseCommand:
- Trinity_gene_splice_modeler.py
