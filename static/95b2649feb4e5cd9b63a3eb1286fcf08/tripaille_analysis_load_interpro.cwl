class: CommandLineTool
id: tripaille_analysis_load_interpro.cwl
inputs:
- id: interpro_parameters
  doc: InterProScan parameters used to produce these results
  type: string
  inputBinding:
    prefix: --interpro_parameters
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
  doc: Use this if the query_re regular expression matches unique names instead of
    names in the database.
  type: boolean
  inputBinding:
    prefix: --query_uniquename
- id: parse_go
  doc: Load GO annotation to the database
  type: boolean
  inputBinding:
    prefix: --parse_go
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
- load_interpro
