class: CommandLineTool
id: anvi_export_structures.cwl
inputs:
- id: in_anvio_structure_database
  doc: "Anvi'o structure database. (default: None)"
  type: string?
  inputBinding:
    prefix: --structure-db
- id: in_output_dir
  doc: 'Directory path for output files (default: None)'
  type: File?
  inputBinding:
    prefix: --output-dir
- id: in_gene_caller_ids
  doc: "Gene caller ids. Multiple of them can be declared\nseparated by a delimiter\
    \ (the default is a comma). In\nanvi-gen-variability-profile, if you declare nothing\n\
    you will get all genes matching your other filtering\ncriteria. In other programs,\
    \ you may get everything,\nnothing, or an error. It really depends on the\nsituation.\
    \ Fortunately, mistakes are cheap, so it's\nworth a try. (default: None)"
  type: string?
  inputBinding:
    prefix: --gene-caller-ids
- id: in_genes_of_interest
  doc: "A file with anvi'o gene caller IDs. There should be\nonly one column in the\
    \ file, and each line should\ncorrespond to a unique gene caller id (without a\n\
    column header). (default: None)"
  type: File?
  inputBinding:
    prefix: --genes-of-interest
- id: in__can_provide
  doc: '🍕 Can provide: '
  type: string
  inputBinding:
    position: 0
- id: in_protein_structure_txt
  doc: '🍺 More on `anvi-export-structures`:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: 'Directory path for output files (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-export-structures
