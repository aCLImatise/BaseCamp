#!/usr/bin/env cwl-runner

baseCommand:
- mhcflurry-predict
class: CommandLineTool
cwlVersion: v1.0
id: mhcflurry-predict
inputs:
- doc: Prints the list of supported alleles and exits
  id: list_supported_alleles
  inputBinding:
    prefix: --list-supported-alleles
  type: boolean
- doc: Prints the list of supported peptide lengths and exits
  id: list_supported_peptide_lengths
  inputBinding:
    prefix: --list-supported-peptide-lengths
  type: boolean
- doc: Alleles to predict (exclusive with passing an input CSV)
  id: alleles
  inputBinding:
    prefix: --alleles
  type:
    items: string
    type: array
- doc: Peptides to predict (exclusive with passing an input CSV)
  id: peptides
  inputBinding:
    prefix: --peptides
  type:
    items: string
    type: array
- doc: "Input column name for alleles. Default: 'allele'"
  id: allele_column
  inputBinding:
    prefix: --allele-column
  type: string
- doc: "Input column name for peptides. Default: 'peptide'"
  id: peptide_column
  inputBinding:
    prefix: --peptide-column
  type: string
- doc: "Column giving N-terminal flanking sequence. Default: 'n_flank'"
  id: n_flank_column
  inputBinding:
    prefix: --n-flank-column
  type: string
- doc: "Column giving C-terminal flanking sequence. Default: 'c_flank'"
  id: c_flank_column
  inputBinding:
    prefix: --c-flank-column
  type: string
- doc: Return NaNs for unsupported alleles or peptides instead of raising
  id: no_throw
  inputBinding:
    prefix: --no-throw
  type: boolean
- doc: Output CSV
  id: out
  inputBinding:
    prefix: --out
  type: string
- doc: "Prefix for output column names. Default: 'mhcflurry_'"
  id: prediction_column_prefix
  inputBinding:
    prefix: --prediction-column-prefix
  type: string
- doc: "Delimiter character for results. Default: ','"
  id: output_delimiter
  inputBinding:
    prefix: --output-delimiter
  type: string
- doc: Do not include affinity percentile rank
  id: no_affinity_percentile
  inputBinding:
    prefix: --no-affinity-percentile
  type: boolean
- doc: Always include the best_allele column even when it is identical to the allele
    column (i.e. all queries are monoallelic).
  id: always_include_best_allele
  inputBinding:
    prefix: --always-include-best-allele
  type: boolean
- doc: 'Directory containing models. Either a binding affinity predictor or a presentation
    predictor can be used. Default: /home/ubuntu/.local/share/mhcflurry/4/1.6.0/m
    odels_class1_presentation/models'
  id: models
  inputBinding:
    prefix: --models
  type: string
- doc: Affinity prediction only (no antigen processing or presentation)
  id: affinity_only
  inputBinding:
    prefix: --affinity-only
  type: boolean
- doc: Do not use flanking sequence information even when available
  id: no_flanking
  inputBinding:
    prefix: --no-flanking
  type: boolean
