class: CommandLineTool
id: ../../../anvi_get_split_coverages.cwl
inputs:
- id: in_profile_db
  doc: Anvi'o profile database
  type: string
  inputBinding:
    prefix: --profile-db
- id: in_split_name
  doc: Split name.
  type: string
  inputBinding:
    prefix: --split-name
- id: in_contigs_db
  doc: "Anvi'o contigs database generated by 'anvi-gen-\ncontigs'"
  type: string
  inputBinding:
    prefix: --contigs-db
- id: in_collection_name
  doc: Collection name.
  type: string
  inputBinding:
    prefix: --collection-name
- id: in_bin_id
  doc: Bin name you are interested in.
  type: string
  inputBinding:
    prefix: --bin-id
- id: in_output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
- id: in_list_splits
  doc: "When declared, the program will list split names in\nthe profile database\
    \ and quite"
  type: boolean
  inputBinding:
    prefix: --list-splits
- id: in_list_collections
  doc: Show available collections and exit.
  type: boolean
  inputBinding:
    prefix: --list-collections
- id: in_list_bins
  doc: List available bins in a collection and exit.
  type: boolean
  inputBinding:
    prefix: --list-bins
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
- anvi-get-split-coverages