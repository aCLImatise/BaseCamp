class: CommandLineTool
id: enrichm_explore.cwl
inputs:
- id: queries
  doc: '[--depth DEPTH]'
  type: string
  inputBinding:
    prefix: --queries
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
- id: queries
  doc: A file containing the KEGG ids of the compounds from which to start in the
    metabolic network
  type: string
  inputBinding:
    prefix: --queries
- id: depth
  doc: Number of steps to take into the metabolic network
  type: string
  inputBinding:
    prefix: --depth
outputs: []
cwlVersion: v1.1
baseCommand:
- enrichm
- explore
