class: CommandLineTool
id: sonicparanoid_extract.cwl
inputs:
- id: input_table
  doc: 'Table with output groups generated using SonicParanoid. NOTE: the headers
    must not be modified or removed.'
  type: string
  inputBinding:
    prefix: --input-table
- id: output_directory
  doc: The directory in which the results will be stored.
  type: string
  inputBinding:
    prefix: --output-directory
- id: fast_a_directory
  doc: Directory containing the proteome files in FASTA format.
  type: string
  inputBinding:
    prefix: --fasta-directory
- id: min_sp
  doc: Exctract clusters with genes from at least --min-sp species. (Default=2)
  type: long
  inputBinding:
    prefix: --min-sp
- id: max_sp
  doc: Exctract clusters with genes from at max --max-sp species. (Default=2)
  type: long
  inputBinding:
    prefix: --max-sp
- id: ids_list
  doc: 'Extract a list of clusters by their ids. NOTE: the ids should be separated
    by a comma (e.g., --ids-list 20,23,40,22); this parameter bypasses the --min-sp
    and max-sp.'
  type: string
  inputBinding:
    prefix: --ids-list
- id: min_conf
  doc: Keep only orthologs with a confidence higher than --min-conf. (Default=0.05)
  type: long
  inputBinding:
    prefix: --min-conf
- id: fast_a
  doc: Generate a FASTA for with the proteins in each cluster.
  type: boolean
  inputBinding:
    prefix: --fasta
- id: multiple_fast_a
  doc: Generate a FASTA file for each species in each cluster. (implies --fasta)
  type: boolean
  inputBinding:
    prefix: --multiple-fasta
- id: an_not_cols
  doc: 'Column ids containing annotations for the new HDR. NOTE: the column positions
    should be separated by a comma (e.g., --annot-cols 1,2,4,5); this parameter bypasses.'
  type: string
  inputBinding:
    prefix: --annot-cols
- id: an_not_file
  doc: Table with tab-serataed fields with annotations.
  type: string
  inputBinding:
    prefix: --annot-file
- id: gene_col_id
  doc: Column number of the annotation file containing the protein id.
  type: string
  inputBinding:
    prefix: --gene-col-id
- id: debug
  doc: Output debug information.
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- sonicparanoid-extract
