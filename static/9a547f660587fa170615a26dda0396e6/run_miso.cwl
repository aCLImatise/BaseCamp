class: CommandLineTool
id: run_miso.py.cwl
inputs:
- id: event_type
  doc: Event type of two-isoform events (e.g. 'SE', 'RI', 'A3SS', ...)
  type: string
  inputBinding:
    prefix: --event-type
- id: use_compressed
  doc: Use compressed event IDs. Takes as input a genes_to_filenames.shelve file produced
    by the index_gff script.
  type: string
  inputBinding:
    prefix: --use-compressed
- id: view_gene
  doc: View the contents of a gene/event that has been indexed. Takes as input an
    indexed (.pickle) filename.
  type: string
  inputBinding:
    prefix: --view-gene
outputs: []
cwlVersion: v1.1
baseCommand:
- run_miso.py
