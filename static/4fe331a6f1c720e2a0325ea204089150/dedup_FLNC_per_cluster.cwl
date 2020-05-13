class: CommandLineTool
id: dedup_FLNC_per_cluster.py.cwl
inputs:
- id: corrected_csv
  doc: Annotated, error-corrected FLNC CSV file
  type: string
  inputBinding:
    position: 0
- id: cluster_file
  doc: Short read barcode to cluster CSV file
  type: string
  inputBinding:
    position: 1
- id: fast_a
  doc: (Optional) Fasta file (IDs should be PB.X.Y)
  type: string
  inputBinding:
    prefix: --fasta
- id: gff
  doc: (Optional) GFF file (IDs should be PB.X.Y)
  type: string
  inputBinding:
    prefix: --gff
- id: faa
  doc: (Optional) Faa file (IDs should be PB.X.Y)
  type: string
  inputBinding:
    prefix: --faa
outputs: []
cwlVersion: v1.1
baseCommand:
- dedup_FLNC_per_cluster.py
