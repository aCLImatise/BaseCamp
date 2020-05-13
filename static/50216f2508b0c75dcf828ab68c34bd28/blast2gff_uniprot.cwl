class: CommandLineTool
id: blast2gff_uniprot.cwl
inputs:
- id: db_used
  doc: 'Uniprot database used with BLAST  [default: UNIPROT-SP]'
  type: string
  inputBinding:
    prefix: --db-used
- id: no_split
  doc: if used, the script assumes that the sequence header will be used as gene_id
  type: boolean
  inputBinding:
    prefix: --no-split
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
- uniprot
