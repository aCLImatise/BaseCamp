class: CommandLineTool
id: chakin_feature_load_fasta.cwl
inputs:
- id: in_sequence_type
  doc: 'Sequence type  [default: contig]'
  type: string
  inputBinding:
    prefix: --sequence_type
- id: in_analysis_id
  doc: Analysis ID
  type: long
  inputBinding:
    prefix: --analysis_id
- id: in_re_name
  doc: "Regular expression to extract the feature name from\nthe fasta sequence id\
    \ (first capturing group will be\nused)."
  type: string
  inputBinding:
    prefix: --re_name
- id: in_re_unique_name
  doc: "Regular expression to extract the feature name from\nthe fasta sequence id\
    \ (first capturing group will be\nused)."
  type: string
  inputBinding:
    prefix: --re_uniquename
- id: in_match_on_name
  doc: "Match existing features using their name instead of\ntheir uniquename"
  type: boolean
  inputBinding:
    prefix: --match_on_name
- id: in_update
  doc: "Update existing feature with new sequence instead of\nthrowing an error"
  type: boolean
  inputBinding:
    prefix: --update
- id: in_db
  doc: External database to cross reference to.
  type: long
  inputBinding:
    prefix: --db
- id: in_re_db_accession
  doc: "Regular expression to extract an external database\naccession from the fasta\
    \ sequence id (first\ncapturing group will be used)."
  type: string
  inputBinding:
    prefix: --re_db_accession
- id: in_rel_type
  doc: "Relation type to parent feature ('part_of' or\n'derives_from')."
  type: string
  inputBinding:
    prefix: --rel_type
- id: in_re_parent
  doc: "Regular expression to extract parent uniquename from\nthe fasta sequence id\
    \ (first capturing group will be\nused)."
  type: string
  inputBinding:
    prefix: --re_parent
- id: in_parent_type
  doc: Sequence type of the parent feature
  type: string
  inputBinding:
    prefix: --parent_type
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_organism_id
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- chakin
- feature
- load_fasta
