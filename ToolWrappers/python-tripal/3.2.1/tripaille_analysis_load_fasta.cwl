class: CommandLineTool
id: tripaille_analysis_load_fasta.cwl
inputs:
- id: in_organism
  doc: Organism common name or abbreviation
  type: string
  inputBinding:
    prefix: --organism
- id: in_organism_id
  doc: Organism ID
  type: long
  inputBinding:
    prefix: --organism_id
- id: in_analysis
  doc: Analysis name
  type: string
  inputBinding:
    prefix: --analysis
- id: in_analysis_id
  doc: Analysis ID
  type: long
  inputBinding:
    prefix: --analysis_id
- id: in_sequence_type
  doc: 'Sequence type  [default: contig]'
  type: string
  inputBinding:
    prefix: --sequence_type
- id: in_re_name
  doc: Regular expression for the name
  type: string
  inputBinding:
    prefix: --re_name
- id: in_re_unique_name
  doc: Regular expression for the unique name
  type: string
  inputBinding:
    prefix: --re_uniquename
- id: in_db_ext_id
  doc: External DB ID
  type: string
  inputBinding:
    prefix: --db_ext_id
- id: in_re_accession
  doc: Regular expression for the accession from external
  type: string
  inputBinding:
    prefix: --re_accession
- id: in_rel_subject_re
  doc: "Relation subject regular expression (used to\nextract id of related entity)"
  type: string
  inputBinding:
    prefix: --rel_subject_re
- id: in_rel_subject_type
  doc: "Relation subject type (must match already loaded\ndata, e.g. mRNA)"
  type: string
  inputBinding:
    prefix: --rel_subject_type
- id: in_method
  doc: "Insertion method (insert, update or insup,\ndefault=insup (Insert and Update))\
    \  [default:\ninsup]"
  type: string
  inputBinding:
    prefix: --method
- id: in_match_type
  doc: "Match type for already loaded features (name or\nuniquename; default=uniquename;\
    \ used for \"Update\nonly\" or \"Insert and update\" methods)'  [default:\nuniquename]"
  type: string
  inputBinding:
    prefix: --match_type
- id: in_job_name
  doc: Name of the job
  type: string
  inputBinding:
    prefix: --job_name
- id: in_no_wait
  doc: Do not wait for job to complete
  type: boolean
  inputBinding:
    prefix: --no_wait
- id: in_db
  doc: --rel_type TEXT          Relation type (part_of or derives_from)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tripaille
- analysis
- load_fasta
