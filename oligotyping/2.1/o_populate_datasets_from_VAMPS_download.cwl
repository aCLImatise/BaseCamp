class: CommandLineTool
id: o_populate_datasets_from_VAMPS_download.cwl
inputs:
- id: fast_a
  doc: FASTA file downloaded from VAMPS
  type: string
  inputBinding:
    position: 0
- id: tax_on
  doc: Isolate a particular taxon
  type: string
  inputBinding:
    prefix: --taxon
- id: output
  doc: Output file name
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- o-populate-datasets-from-VAMPS-download
