class: CommandLineTool
id: enrichm_pathway.cwl
inputs:
- id: matrix
  doc: KO matrix. REQUIRED.
  type: string
  inputBinding:
    prefix: --matrix
- id: genome_metadata
  doc: Metadata file with two columns, the first with the genome name, the second
    with the groupings to compare.
  type: string
  inputBinding:
    prefix: --genome_metadata
- id: abundance
  doc: Abundance matrix.
  type: string
  inputBinding:
    prefix: --abundance
- id: abundance_metadata
  doc: Metadata file with two columns, the first with the genome name, the second
    with the groupings to compare.
  type: string
  inputBinding:
    prefix: --abundance_metadata
- id: tpm_values
  doc: TPM values produced by DetectM.
  type: string
  inputBinding:
    prefix: --tpm_values
- id: tpm_metadata
  doc: Metadata file with two columns, the first with the genome name, the second
    with the groupings to compare.
  type: string
  inputBinding:
    prefix: --tpm_metadata
- id: metabo_lome
  doc: Metabolome CID matrix.
  type: string
  inputBinding:
    prefix: --metabolome
- id: log
  doc: Output logging information to this file.
  type: string
  inputBinding:
    prefix: --log
- id: verbosity
  doc: Level of verbosity (1 - 5 - default = 4) 5 = Very verbose, 1 = Silent
  type: string
  inputBinding:
    prefix: --verbosity
- id: output
  doc: Output directory
  type: string
  inputBinding:
    prefix: --output
- id: force
  doc: Overwrite previous run
  type: boolean
  inputBinding:
    prefix: --force
- id: limit
  doc: USE ONLY these reactions, or reactions within this pathway or module (space
    separated list).
  type: string[]
  inputBinding:
    prefix: --limit
- id: filter
  doc: Do not use these reactions, or reactions within this pathway or module (space
    separated list).
  type: string[]
  inputBinding:
    prefix: --filter
- id: enrichment_output
  doc: Supply an enrichment output to integrate the results into the output network.
  type: string
  inputBinding:
    prefix: --enrichment_output
outputs: []
cwlVersion: v1.1
baseCommand:
- enrichm
- pathway
