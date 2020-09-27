class: CommandLineTool
id: tripaille_analysis_load_go.cwl
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
- id: in_gaf_ext
  doc: "If looking for files in a directory, extension of the\nGAF files"
  type: Directory
  inputBinding:
    prefix: --gaf_ext
- id: in_query_type
  doc: "The feature type (e.g. 'gene', 'mRNA', 'contig') of\nthe query. It must be\
    \ a valid Sequence Ontology term."
  type: string
  inputBinding:
    prefix: --query_type
- id: in_query_matching
  doc: "Method to match identifiers to features in the\ndatabase. ('name', 'uniquename'\
    \ or 'dbxref')\n[default: uniquename]"
  type: string
  inputBinding:
    prefix: --query_matching
- id: in_method
  doc: "Import method ('add' or 'remove')  [default: add]"
  type: string
  inputBinding:
    prefix: --method
- id: in_name_column
  doc: "Column containing the feature identifiers (2, 3, 10\nor 11; default=2).  [default:\
    \ 2]"
  type: long
  inputBinding:
    prefix: --name_column
- id: in_re_name
  doc: "Regular expression to extract the feature name from\nGAF file."
  type: File
  inputBinding:
    prefix: --re_name
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
- load_go
