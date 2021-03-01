class: CommandLineTool
id: mhcflurry_predict.cwl
inputs:
- id: in_list_supported_alleles
  doc: Prints the list of supported alleles and exits
  type: boolean?
  inputBinding:
    prefix: --list-supported-alleles
- id: in_list_supported_peptide_lengths
  doc: Prints the list of supported peptide lengths and exits
  type: boolean?
  inputBinding:
    prefix: --list-supported-peptide-lengths
- id: in_alleles
  doc: "Alleles to predict (exclusive with passing an input\nCSV)"
  type: string[]
  inputBinding:
    prefix: --alleles
- id: in_peptides
  doc: "Peptides to predict (exclusive with passing an input\nCSV)"
  type: string[]
  inputBinding:
    prefix: --peptides
- id: in_allele_column
  doc: "Input column name for alleles. Default: 'allele'"
  type: string?
  inputBinding:
    prefix: --allele-column
- id: in_peptide_column
  doc: "Input column name for peptides. Default: 'peptide'"
  type: string?
  inputBinding:
    prefix: --peptide-column
- id: in_n_flank_column
  doc: "Column giving N-terminal flanking sequence. Default:\n'n_flank'"
  type: string?
  inputBinding:
    prefix: --n-flank-column
- id: in_c_flank_column
  doc: "Column giving C-terminal flanking sequence. Default:\n'c_flank'"
  type: string?
  inputBinding:
    prefix: --c-flank-column
- id: in_no_throw
  doc: "Return NaNs for unsupported alleles or peptides\ninstead of raising"
  type: boolean?
  inputBinding:
    prefix: --no-throw
- id: in_out
  doc: Output CSV
  type: string?
  inputBinding:
    prefix: --out
- id: in_prediction_column_prefix
  doc: "Prefix for output column names. Default: 'mhcflurry_'"
  type: string?
  inputBinding:
    prefix: --prediction-column-prefix
- id: in_output_delimiter
  doc: "Delimiter character for results. Default: ','"
  type: string?
  inputBinding:
    prefix: --output-delimiter
- id: in_no_affinity_percentile
  doc: Do not include affinity percentile rank
  type: boolean?
  inputBinding:
    prefix: --no-affinity-percentile
- id: in_always_include_best_allele
  doc: "Always include the best_allele column even when it is\nidentical to the allele\
    \ column (i.e. all queries are\nmonoallelic)."
  type: boolean?
  inputBinding:
    prefix: --always-include-best-allele
- id: in_models
  doc: "Directory containing models. Either a binding affinity\npredictor or a presentation\
    \ predictor can be used.\nDefault: /root/.local/share/mhcflurry/4/2.0.0/models_c\n\
    lass1_presentation/models"
  type: Directory?
  inputBinding:
    prefix: --models
- id: in_affinity_only
  doc: "Affinity prediction only (no antigen processing or\npresentation)"
  type: boolean?
  inputBinding:
    prefix: --affinity-only
- id: in_no_flanking
  doc: "Do not use flanking sequence information even when\navailable\n"
  type: boolean?
  inputBinding:
    prefix: --no-flanking
- id: in_input_dot_csv
  doc: Input CSV
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mhcflurry:2.0.1--pyh864c0ab_0
cwlVersion: v1.1
baseCommand:
- mhcflurry-predict
