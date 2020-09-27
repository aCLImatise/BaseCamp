class: CommandLineTool
id: tripaille_analysis_load_blast.cwl
inputs:
- id: in_blast_ext
  doc: "If looking for files in a directory, extension of\nthe blast result files"
  type: Directory
  inputBinding:
    prefix: --blast_ext
- id: in_blast_db
  doc: "Name of the database blasted against (must be in\nthe Chado db table)"
  type: string
  inputBinding:
    prefix: --blastdb
- id: in_blast_db_id
  doc: "ID of the database blasted against (must be in the\nChado db table)"
  type: string
  inputBinding:
    prefix: --blastdb_id
- id: in_blast_parameters
  doc: Blast parameters used to produce these results
  type: string
  inputBinding:
    prefix: --blast_parameters
- id: in_query_re
  doc: "The regular expression that can uniquely identify\nthe query name. This parameters\
    \ is required if the\nfeature name is not the first word in the blast\nquery name."
  type: string
  inputBinding:
    prefix: --query_re
- id: in_query_type
  doc: "The feature type (e.g. 'gene', 'mRNA', 'contig') of\nthe query. It must be\
    \ a valid Sequence Ontology\nterm."
  type: string
  inputBinding:
    prefix: --query_type
- id: in_query_unique_name
  doc: "Use this if the --query-re regular expression\nmatches unique names instead\
    \ of names in the\ndatabase."
  type: boolean
  inputBinding:
    prefix: --query_uniquename
- id: in_is_concat
  doc: "If the blast result file is simply a list of\nconcatenated blast results."
  type: boolean
  inputBinding:
    prefix: --is_concat
- id: in_search_keywords
  doc: Extract keywords for Tripal search
  type: boolean
  inputBinding:
    prefix: --search_keywords
- id: in_no_parsed
  doc: "Maximum number of hits to parse per feature.\nDefault=all  [default: all]"
  type: long
  inputBinding:
    prefix: --no_parsed
- id: in_no_wait
  doc: Do not wait for job to complete
  type: boolean
  inputBinding:
    prefix: --no_wait
- id: in_algorithm
  doc: analysis algorithm
  type: string
  inputBinding:
    prefix: --algorithm
- id: in_source_version
  doc: analysis sourceversion
  type: string
  inputBinding:
    prefix: --sourceversion
- id: in_source_uri
  doc: analysis sourceuri
  type: string
  inputBinding:
    prefix: --sourceuri
- id: in_description
  doc: analysis description
  type: string
  inputBinding:
    prefix: --description
- id: in_date_executed
  doc: analysis date_executed (yyyy-mm-dd)
  type: string
  inputBinding:
    prefix: --date_executed
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_program
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_program_version
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tripaille
- analysis
- load_blast
