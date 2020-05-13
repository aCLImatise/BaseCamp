class: CommandLineTool
id: blast2gff_blastdb.cwl
inputs:
- id: db_used
  doc: 'blastdb used  [default: NCBI-NT]'
  type: string
  inputBinding:
    prefix: --db-used
- id: no_split
  doc: if used, the script assumes that the sequence header will be used as gene_id
  type: boolean
  inputBinding:
    prefix: --no-split
- id: header_sep
  doc: "The separator for the header, defaults to '|' (pipe)  [default: |]"
  type: string
  inputBinding:
    prefix: --header-sep
- id: gene_index
  doc: 'Which of the header columns (0-based) to use as gene_id (defaults to 1 - the
    second column) [default: 1]'
  type: long
  inputBinding:
    prefix: --gene-index
- id: remove_version
  doc: if used, the script removes the *version* information from the gene_id
  type: boolean
  inputBinding:
    prefix: --remove-version
- id: fast_a_file
  doc: Optional FASTA file with the query sequences
  type: File
  inputBinding:
    prefix: --fasta-file
- id: db_quality
  doc: 'Quality of the DB used  [default: 10]'
  type: long
  inputBinding:
    prefix: --db-quality
- id: bit_score
  doc: 'Minimum bitscore to keep the annotation [default: 0.0]'
  type: double
  inputBinding:
    prefix: --bitscore
- id: attr_value
  doc: Additional attribute and value to add to each annotation, in the form attr:value
  type: string
  inputBinding:
    prefix: --attr-value
- id: feat_type
  doc: 'Feature type to use in the GFF  [default: CDS]'
  type: string
  inputBinding:
    prefix: --feat-type
- id: progress
  doc: Shows Progress Bar
  type: boolean
  inputBinding:
    prefix: --progress
outputs: []
cwlVersion: v1.1
baseCommand:
- blast2gff
- blastdb
