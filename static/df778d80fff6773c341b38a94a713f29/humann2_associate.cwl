class: CommandLineTool
id: humann2_associate.cwl
inputs:
- id: input
  doc: HUMAnN2 table with metadata rows at the top
  type: File
  inputBinding:
    prefix: --input
- id: focal_meta_datum
  doc: Indicate metadatum to test vs. community feature totals
  type: string
  inputBinding:
    prefix: --focal-metadatum
- id: last_meta_datum
  doc: Indicate end of metadata rows
  type: string
  inputBinding:
    prefix: --last-metadatum
- id: focal_type
  doc: Metadatum type
  type: string
  inputBinding:
    prefix: --focal-type
- id: output
  doc: Where to save the output
  type: File
  inputBinding:
    prefix: --output
- id: fdr
  doc: FDR threshold (default=0.2)
  type: double
  inputBinding:
    prefix: --fdr
outputs: []
cwlVersion: v1.1
baseCommand:
- humann2_associate
