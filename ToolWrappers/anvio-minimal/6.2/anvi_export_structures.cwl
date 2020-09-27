class: CommandLineTool
id: anvi_export_structures.cwl
inputs:
- id: in_structure_db
  doc: Anvi'o structure database.
  type: string
  inputBinding:
    prefix: --structure-db
- id: in_output_dir
  doc: Directory path for output files
  type: File
  inputBinding:
    prefix: --output-dir
- id: in_gene_caller_ids
  doc: "Gene caller ids. Multiple of them can be declared\nseparated by a delimiter\
    \ (the default is a comma). In\nanvi-gen-variability-profile, if you declare nothing\n\
    you will get all genes matching your other filtering\ncriteria. In other programs,\
    \ you may get everything,\nnothing, or an error. It really depends on the\nsituation.\
    \ Fortunately, mistakes are cheap, so it's\nworth a try."
  type: string
  inputBinding:
    prefix: --gene-caller-ids
- id: in_genes_of_interest
  doc: "A file with anvi'o gene caller IDs. There should be\nonly one column in the\
    \ file, and each line should\ncorrespond to a unique gene caller id (without a\n\
    column header).\n"
  type: File
  inputBinding:
    prefix: --genes-of-interest
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Directory path for output files
  type: File
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- anvi-export-structures
