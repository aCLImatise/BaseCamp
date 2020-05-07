class: CommandLineTool
id: humann2_strain_profiler.cwl
inputs:
- id: input
  doc: Original output table (tsv or biom format); default=[TSV/STDIN]
  type: string
  inputBinding:
    prefix: --input
- id: critical_mean
  doc: Default mean non-zero gene abundance for inclusion; default=10.0
  type: string
  inputBinding:
    prefix: --critical_mean
- id: critical_count
  doc: Default non-zero number of genes for inclusion; default=500
  type: string
  inputBinding:
    prefix: --critical_count
- id: p
  doc: PINTERVAL, --pinterval PINTERVAL PINTERVAL Only genes with prevalence in this
    interval are allowed; default=[1e-10, 1]
  type: string
  inputBinding:
    prefix: -p
- id: critical_samples
  doc: Threshold number of samples having strain; default=2
  type: string
  inputBinding:
    prefix: --critical_samples
- id: limit
  doc: Limit output to species matching a particular pattern, e.g. 'Streptococcus';
    default=OFF
  type: string
  inputBinding:
    prefix: --limit
outputs: []
cwlVersion: v1.1
baseCommand:
- humann2_strain_profiler
