class: CommandLineTool
id: enrichm_pathway.cwl
inputs:
- id: in_matrix
  doc: KO matrix. REQUIRED.
  type: string?
  inputBinding:
    prefix: --matrix
- id: in_genome_metadata
  doc: Metadata file with two columns, the first with the genome name, the second
    with the groupings to compare.
  type: File?
  inputBinding:
    prefix: --genome_metadata
- id: in_abundance
  doc: Abundance matrix.
  type: string?
  inputBinding:
    prefix: --abundance
- id: in_abundance_metadata
  doc: Metadata file with two columns, the first with the genome name, the second
    with the groupings to compare.
  type: File?
  inputBinding:
    prefix: --abundance_metadata
- id: in_tpm_values
  doc: TPM values produced by DetectM.
  type: string?
  inputBinding:
    prefix: --tpm_values
- id: in_tpm_metadata
  doc: Metadata file with two columns, the first with the genome name, the second
    with the groupings to compare.
  type: File?
  inputBinding:
    prefix: --tpm_metadata
- id: in_metabo_lome
  doc: Metabolome CID matrix.
  type: string?
  inputBinding:
    prefix: --metabolome
- id: in_log
  doc: Output logging information to this file.
  type: File?
  inputBinding:
    prefix: --log
- id: in_verbosity
  doc: Level of verbosity (1 - 5 - default = 4) 5 = Very verbose, 1 = Silent
  type: long?
  inputBinding:
    prefix: --verbosity
- id: in_output
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_force
  doc: Overwrite previous run
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_limit
  doc: USE ONLY these reactions, or reactions within this pathway or module (space
    separated list).
  type: string[]
  inputBinding:
    prefix: --limit
- id: in_filter
  doc: Do not use these reactions, or reactions within this pathway or module (space
    separated list).
  type: string[]
  inputBinding:
    prefix: --filter
- id: in_enrichment_output
  doc: "Supply an enrichment output to integrate the results into the output network.\n"
  type: string?
  inputBinding:
    prefix: --enrichment_output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log
  doc: Output logging information to this file.
  type: File?
  outputBinding:
    glob: $(inputs.in_log)
- id: out_output
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- enrichm
- pathway
