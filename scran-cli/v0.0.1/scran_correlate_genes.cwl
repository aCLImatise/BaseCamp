class: CommandLineTool
id: scran_correlate_genes.R.cwl
inputs:
- id: input_corr_pairs
  doc: Path to the  DataFrame of pairwise correlation statistics, returned by correlatePairs.
  type: string
  inputBinding:
    prefix: --input-corr-pairs
- id: output_corr_genes
  doc: 'A DataFrame with one row per unique gene in stats and containing the fields:
    gene, rho, p.value, FDR, limited.'
  type: string
  inputBinding:
    prefix: --output-corr-genes
outputs: []
cwlVersion: v1.1
baseCommand:
- scran-correlate-genes.R
