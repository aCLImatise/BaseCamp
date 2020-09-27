class: CommandLineTool
id: sonicparanoid_extract.cwl
inputs:
- id: in_input_table
  doc: "Table with output groups generated using\nSonicParanoid. NOTE: the headers\
    \ must not be modified\nor removed."
  type: string
  inputBinding:
    prefix: --input-table
- id: in_output_directory
  doc: The directory in which the results will be stored.
  type: Directory
  inputBinding:
    prefix: --output-directory
- id: in_fast_a_directory
  doc: "Directory containing the proteome files in FASTA\nformat."
  type: Directory
  inputBinding:
    prefix: --fasta-directory
- id: in_min_sp
  doc: "Exctract clusters with genes from at least --min-sp\nspecies. (Default=2)"
  type: long
  inputBinding:
    prefix: --min-sp
- id: in_max_sp
  doc: "Exctract clusters with genes from at max --max-sp\nspecies. (Default=2)"
  type: long
  inputBinding:
    prefix: --max-sp
- id: in_ids_list
  doc: "Extract a list of clusters by their ids. NOTE: the ids\nshould be separated\
    \ by a comma (e.g., --ids-list\n20,23,40,22); this parameter bypasses the --min-sp\
    \ and\nmax-sp."
  type: long
  inputBinding:
    prefix: --ids-list
- id: in_min_conf
  doc: "Keep only orthologs with a confidence higher than\n--min-conf. (Default=0.05)"
  type: long
  inputBinding:
    prefix: --min-conf
- id: in_fast_a
  doc: Generate a FASTA for with the proteins in each
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_an_not_cols
  doc: "Column ids containing annotations for the new HDR.\nNOTE: the column positions\
    \ should be separated by a\ncomma (e.g., --annot-cols 1,2,4,5); this parameter\n\
    bypasses."
  type: long
  inputBinding:
    prefix: --annot-cols
- id: in_an_not_file
  doc: Table with tab-serataed fields with annotations.
  type: File
  inputBinding:
    prefix: --annot-file
- id: in_gene_col_id
  doc: "Column number of the annotation file containing the\nprotein id."
  type: long
  inputBinding:
    prefix: --gene-col-id
- id: in_debug
  doc: Output debug information.
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_cluster_dot
  doc: -mf, --multiple-fasta
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: The directory in which the results will be stored.
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
cwlVersion: v1.1
baseCommand:
- sonicparanoid-extract
