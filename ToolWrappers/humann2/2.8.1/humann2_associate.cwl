class: CommandLineTool
id: humann2_associate.cwl
inputs:
- id: in_input
  doc: HUMAnN2 table with metadata rows at the top
  type: File?
  inputBinding:
    prefix: --input
- id: in_focal_meta_datum
  doc: Indicate metadatum to test vs. community feature totals
  type: string?
  inputBinding:
    prefix: --focal-metadatum
- id: in_last_meta_datum
  doc: Indicate end of metadata rows
  type: string?
  inputBinding:
    prefix: --last-metadatum
- id: in_focal_type
  doc: Metadatum type
  type: string?
  inputBinding:
    prefix: --focal-type
- id: in_output
  doc: Where to save the output
  type: File?
  inputBinding:
    prefix: --output
- id: in_fdr
  doc: "FDR threshold (default=0.2)\n"
  type: double?
  inputBinding:
    prefix: --fdr
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- humann2_associate
