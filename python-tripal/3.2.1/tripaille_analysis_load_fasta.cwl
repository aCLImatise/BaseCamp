class: CommandLineTool
id: tripaille_analysis_load_fasta.cwl
inputs:
- id: organism
  doc: Organism common name or abbreviation
  type: string
  inputBinding:
    prefix: --organism
- id: organism_id
  doc: Organism ID
  type: long
  inputBinding:
    prefix: --organism_id
- id: analysis
  doc: Analysis name
  type: string
  inputBinding:
    prefix: --analysis
- id: analysis_id
  doc: Analysis ID
  type: long
  inputBinding:
    prefix: --analysis_id
- id: sequence_type
  doc: 'Sequence type  [default: contig]'
  type: string
  inputBinding:
    prefix: --sequence_type
- id: re_name
  doc: Regular expression for the name
  type: string
  inputBinding:
    prefix: --re_name
- id: re_unique_name
  doc: Regular expression for the unique name
  type: string
  inputBinding:
    prefix: --re_uniquename
- id: db_ext_id
  doc: External DB ID
  type: string
  inputBinding:
    prefix: --db_ext_id
- id: re_accession
  doc: Regular expression for the accession from external DB
  type: string
  inputBinding:
    prefix: --re_accession
- id: rel_type
  doc: Relation type (part_of or derives_from)
  type: string
  inputBinding:
    prefix: --rel_type
- id: rel_subject_re
  doc: Relation subject regular expression (used to extract id of related entity)
  type: string
  inputBinding:
    prefix: --rel_subject_re
- id: rel_subject_type
  doc: Relation subject type (must match already loaded data, e.g. mRNA)
  type: string
  inputBinding:
    prefix: --rel_subject_type
- id: method
  doc: 'Insertion method (insert, update or insup, default=insup (Insert and Update))  [default:
    insup]'
  type: string
  inputBinding:
    prefix: --method
- id: match_type
  doc: "Match type for already loaded features (name or uniquename; default=uniquename;\
    \ used for \"Update only\" or \"Insert and update\" methods)'  [default: uniquename]"
  type: string
  inputBinding:
    prefix: --match_type
- id: job_name
  doc: Name of the job
  type: string
  inputBinding:
    prefix: --job_name
- id: no_wait
  doc: Do not wait for job to complete
  type: boolean
  inputBinding:
    prefix: --no_wait
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- analysis
- load_fasta
