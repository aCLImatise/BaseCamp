class: CommandLineTool
id: atlas_genotype.cwl
inputs:
- id: sample
  doc: sample id
  type: string
  inputBinding:
    position: 0
- id: probe_set
  doc: probe_set
  type: string
  inputBinding:
    position: 1
- id: ctx
  doc: cortex graph binary
  type: string
  inputBinding:
    prefix: --ctx
- id: force
  doc: force
  type: boolean
  inputBinding:
    prefix: --force
- id: ont
  doc: Set default for ONT data
  type: boolean
  inputBinding:
    prefix: --ont
- id: ignore_filtered
  doc: don't include filtered genotypes
  type: string
  inputBinding:
    prefix: --ignore_filtered
- id: model
  doc: species
  type: string
  inputBinding:
    prefix: --model
- id: filters
  doc: don't include filtered genotypes
  type: string[]
  inputBinding:
    prefix: --filters
- id: report_all_calls
  doc: report all calls
  type: boolean
  inputBinding:
    prefix: --report_all_calls
- id: expected_error_rate
  doc: Expected sequencing error rate. Set to 0.15 for ONT genotyping.
  type: string
  inputBinding:
    prefix: --expected_error_rate
- id: min_variant_conf
  doc: minimum genotype confidence for variant genotyping
  type: long
  inputBinding:
    prefix: --min_variant_conf
- id: min_gene_conf
  doc: minimum genotype confidence for gene genotyping
  type: long
  inputBinding:
    prefix: --min_gene_conf
- id: min_gene_percent_co_vg_threshold
  doc: all genes alleles found above this percent coverage will be reported (default
    100 (only best alleles reported))
  type: long
  inputBinding:
    prefix: --min_gene_percent_covg_threshold
- id: quiet
  doc: do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- atlas
- genotype
