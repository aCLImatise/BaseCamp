class: CommandLineTool
id: mhcflurry_predict.cwl
inputs:
- id: list_supported_alleles
  doc: Prints the list of supported alleles and exits
  type: boolean
  inputBinding:
    prefix: --list-supported-alleles
- id: list_supported_peptide_lengths
  doc: Prints the list of supported peptide lengths and exits
  type: boolean
  inputBinding:
    prefix: --list-supported-peptide-lengths
- id: alleles
  doc: Alleles to predict (exclusive with passing an input CSV)
  type: string[]
  inputBinding:
    prefix: --alleles
- id: peptides
  doc: Peptides to predict (exclusive with passing an input CSV)
  type: string[]
  inputBinding:
    prefix: --peptides
- id: allele_column
  doc: "Input column name for alleles. Default: 'allele'"
  type: string
  inputBinding:
    prefix: --allele-column
- id: peptide_column
  doc: "Input column name for peptides. Default: 'peptide'"
  type: string
  inputBinding:
    prefix: --peptide-column
- id: n_flank_column
  doc: "Column giving N-terminal flanking sequence. Default: 'n_flank'"
  type: string
  inputBinding:
    prefix: --n-flank-column
- id: c_flank_column
  doc: "Column giving C-terminal flanking sequence. Default: 'c_flank'"
  type: string
  inputBinding:
    prefix: --c-flank-column
- id: no_throw
  doc: Return NaNs for unsupported alleles or peptides instead of raising
  type: boolean
  inputBinding:
    prefix: --no-throw
- id: out
  doc: Output CSV
  type: string
  inputBinding:
    prefix: --out
- id: prediction_column_prefix
  doc: "Prefix for output column names. Default: 'mhcflurry_'"
  type: string
  inputBinding:
    prefix: --prediction-column-prefix
- id: output_delimiter
  doc: "Delimiter character for results. Default: ','"
  type: string
  inputBinding:
    prefix: --output-delimiter
- id: no_affinity_percentile
  doc: Do not include affinity percentile rank
  type: boolean
  inputBinding:
    prefix: --no-affinity-percentile
- id: always_include_best_allele
  doc: Always include the best_allele column even when it is identical to the allele
    column (i.e. all queries are monoallelic).
  type: boolean
  inputBinding:
    prefix: --always-include-best-allele
- id: models
  doc: 'Directory containing models. Either a binding affinity predictor or a presentation
    predictor can be used. Default: /home/ubuntu/.local/share/mhcflurry/4/1.6.0/m
    odels_class1_presentation/models'
  type: string
  inputBinding:
    prefix: --models
- id: affinity_only
  doc: Affinity prediction only (no antigen processing or presentation)
  type: boolean
  inputBinding:
    prefix: --affinity-only
- id: no_flanking
  doc: Do not use flanking sequence information even when available
  type: boolean
  inputBinding:
    prefix: --no-flanking
outputs: []
cwlVersion: v1.1
baseCommand:
- mhcflurry-predict
