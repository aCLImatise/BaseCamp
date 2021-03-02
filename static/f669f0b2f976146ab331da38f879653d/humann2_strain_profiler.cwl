class: CommandLineTool
id: humann2_strain_profiler.cwl
inputs:
- id: in_input
  doc: Original output table (tsv or biom format); default=[TSV/STDIN]
  type: string?
  inputBinding:
    prefix: --input
- id: in_critical_mean
  doc: Default mean non-zero gene abundance for inclusion; default=10.0
  type: double?
  inputBinding:
    prefix: --critical_mean
- id: in_critical_count
  doc: Default non-zero number of genes for inclusion; default=500
  type: long?
  inputBinding:
    prefix: --critical_count
- id: in_pinterval_pinterval_pintervalonly
  doc: "PINTERVAL, --pinterval PINTERVAL PINTERVAL\nOnly genes with prevalence in\
    \ this interval are allowed; default=[1e-10, 1]"
  type: double?
  inputBinding:
    prefix: -p
- id: in_critical_samples
  doc: Threshold number of samples having strain; default=2
  type: long?
  inputBinding:
    prefix: --critical_samples
- id: in_limit
  doc: "Limit output to species matching a particular pattern, e.g. 'Streptococcus';\
    \ default=OFF\n"
  type: string?
  inputBinding:
    prefix: --limit
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- humann2_strain_profiler
