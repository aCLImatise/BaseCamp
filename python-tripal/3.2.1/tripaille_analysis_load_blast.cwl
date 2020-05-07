class: CommandLineTool
id: tripaille_analysis_load_blast.cwl
inputs:
- id: blast_ext
  doc: If looking for files in a directory, extension of the blast result files
  type: string
  inputBinding:
    prefix: --blast_ext
- id: blast_db
  doc: Name of the database blasted against (must be in the Chado db table)
  type: string
  inputBinding:
    prefix: --blastdb
- id: blast_db_id
  doc: ID of the database blasted against (must be in the Chado db table)
  type: string
  inputBinding:
    prefix: --blastdb_id
- id: blast_parameters
  doc: Blast parameters used to produce these results
  type: string
  inputBinding:
    prefix: --blast_parameters
- id: query_re
  doc: The regular expression that can uniquely identify the query name. This parameters
    is required if the feature name is not the first word in the blast query name.
  type: string
  inputBinding:
    prefix: --query_re
- id: query_type
  doc: The feature type (e.g. 'gene', 'mRNA', 'contig') of the query. It must be a
    valid Sequence Ontology term.
  type: string
  inputBinding:
    prefix: --query_type
- id: query_unique_name
  doc: Use this if the --query-re regular expression matches unique names instead
    of names in the database.
  type: boolean
  inputBinding:
    prefix: --query_uniquename
- id: is_concat
  doc: If the blast result file is simply a list of concatenated blast results.
  type: boolean
  inputBinding:
    prefix: --is_concat
- id: search_keywords
  doc: Extract keywords for Tripal search
  type: boolean
  inputBinding:
    prefix: --search_keywords
- id: no_parsed
  doc: 'Maximum number of hits to parse per feature. Default=all  [default: all]'
  type: string
  inputBinding:
    prefix: --no_parsed
- id: no_wait
  doc: Do not wait for job to complete
  type: boolean
  inputBinding:
    prefix: --no_wait
- id: algorithm
  doc: analysis algorithm
  type: string
  inputBinding:
    prefix: --algorithm
- id: source_version
  doc: analysis sourceversion
  type: string
  inputBinding:
    prefix: --sourceversion
- id: source_uri
  doc: analysis sourceuri
  type: string
  inputBinding:
    prefix: --sourceuri
- id: description
  doc: analysis description
  type: string
  inputBinding:
    prefix: --description
- id: date_executed
  doc: analysis date_executed (yyyy-mm-dd)
  type: string
  inputBinding:
    prefix: --date_executed
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- analysis
- load_blast
