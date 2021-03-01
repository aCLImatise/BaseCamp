class: CommandLineTool
id: tripaille_analysis_load_interpro.cwl
inputs:
- id: in_interpro_parameters
  doc: InterProScan parameters used to produce these
  type: string?
  inputBinding:
    prefix: --interpro_parameters
- id: in_query_type
  doc: "The feature type (e.g. 'gene', 'mRNA', 'contig')\nof the query. It must be\
    \ a valid Sequence\nOntology term."
  type: string?
  inputBinding:
    prefix: --query_type
- id: in_query_unique_name
  doc: "Use this if the query_re regular expression\nmatches unique names instead\
    \ of names in the\ndatabase."
  type: boolean?
  inputBinding:
    prefix: --query_uniquename
- id: in_parse_go
  doc: Load GO annotation to the database
  type: boolean?
  inputBinding:
    prefix: --parse_go
- id: in_no_wait
  doc: Do not wait for job to complete
  type: boolean?
  inputBinding:
    prefix: --no_wait
- id: in_algorithm
  doc: analysis algorithm
  type: string?
  inputBinding:
    prefix: --algorithm
- id: in_source_version
  doc: analysis sourceversion
  type: string?
  inputBinding:
    prefix: --sourceversion
- id: in_source_uri
  doc: analysis sourceuri
  type: string?
  inputBinding:
    prefix: --sourceuri
- id: in_description
  doc: analysis description
  type: string?
  inputBinding:
    prefix: --description
- id: in_date_executed
  doc: analysis date_executed (yyyy-mm-dd)
  type: string?
  inputBinding:
    prefix: --date_executed
- id: in_results
  doc: --query_re TEXT             The regular expression that can uniquely
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tripaille
- analysis
- load_interpro
