class: CommandLineTool
id: anvi_export_structures.cwl
inputs:
- id: structure_db
  doc: Anvi'o structure database.
  type: string
  inputBinding:
    prefix: --structure-db
- id: output_dir
  doc: Directory path for output files
  type: string
  inputBinding:
    prefix: --output-dir
- id: gene_caller_ids
  doc: Gene caller ids. Multiple of them can be declared separated by a delimiter
    (the default is a comma). In anvi-gen-variability-profile, if you declare nothing
    you will get all genes matching your other filtering criteria. In other programs,
    you may get everything, nothing, or an error. It really depends on the situation.
    Fortunately, mistakes are cheap, so it's worth a try.
  type: string
  inputBinding:
    prefix: --gene-caller-ids
- id: genes_of_interest
  doc: A file with anvi'o gene caller IDs. There should be only one column in the
    file, and each line should correspond to a unique gene caller id (without a column
    header).
  type: File
  inputBinding:
    prefix: --genes-of-interest
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-export-structures
