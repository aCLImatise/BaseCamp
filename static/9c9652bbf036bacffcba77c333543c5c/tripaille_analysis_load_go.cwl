class: CommandLineTool
id: tripaille_analysis_load_go.cwl
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
- id: gaf_ext
  doc: If looking for files in a directory, extension of the GAF files
  type: string
  inputBinding:
    prefix: --gaf_ext
- id: query_type
  doc: The feature type (e.g. 'gene', 'mRNA', 'contig') of the query. It must be a
    valid Sequence Ontology term.
  type: string
  inputBinding:
    prefix: --query_type
- id: query_matching
  doc: "Method to match identifiers to features in the database. ('name', 'uniquename'\
    \ or 'dbxref') [default: uniquename]"
  type: string
  inputBinding:
    prefix: --query_matching
- id: method
  doc: "Import method ('add' or 'remove')  [default: add]"
  type: string
  inputBinding:
    prefix: --method
- id: name_column
  doc: 'Column containing the feature identifiers (2, 3, 10 or 11; default=2).  [default:
    2]'
  type: long
  inputBinding:
    prefix: --name_column
- id: re_name
  doc: Regular expression to extract the feature name from GAF file.
  type: string
  inputBinding:
    prefix: --re_name
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
- load_go
