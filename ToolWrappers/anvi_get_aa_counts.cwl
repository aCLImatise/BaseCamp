class: CommandLineTool
id: anvi_get_aa_counts.cwl
inputs:
- id: in_output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
- id: in_profile_db
  doc: Anvi'o profile database
  type: string
  inputBinding:
    prefix: --profile-db
- id: in_collection_name
  doc: Collection name.
  type: string
  inputBinding:
    prefix: --collection-name
- id: in_bin_ids_file
  doc: "Text file for bins (each line should be a unique bin\nid)."
  type: File
  inputBinding:
    prefix: --bin-ids-file
- id: in_contigs_of_interest
  doc: "A file with contig names. There should be only one\ncolumn in the file, and\
    \ each line should correspond to\na unique split name."
  type: File
  inputBinding:
    prefix: --contigs-of-interest
- id: in_gene_caller_ids
  doc: "Gene caller ids. Multiple of them can be declared\nseparated by a delimiter\
    \ (the default is a comma). In\nanvi-gen-variability-profile, if you declare nothing\n\
    you will get all genes matching your other filtering\ncriteria. In other programs,\
    \ you may get everything,\nnothing, or an error. It really depends on the\nsituation.\
    \ Fortunately, mistakes are cheap, so it's\nworth a try.\n"
  type: string
  inputBinding:
    prefix: --gene-caller-ids
- id: in_c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: in_reported_dot
  doc: "-c CONTIGS_DB, --contigs-db CONTIGS_DB\nAnvi'o contigs database generated\
    \ by 'anvi-gen-\ncontigs'"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: File path to store results.
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- anvi-get-aa-counts
