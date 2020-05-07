class: CommandLineTool
id: tripaille_db_index.cwl
inputs:
- id: mode
  doc: "Indexing mode: 'website' to index the website , 'nodes' for the website nodes,\
    \ 'entities' for the website entities (Tripal 3), 'table' to index a single table,\
    \ 'gene' to build a Gene search index (Tripal 3 only) (default: website) ('website'\
    \ default to 'nodes' for Tripal 2, 'entities' for Tripal 3)  [default: website]"
  type: string
  inputBinding:
    prefix: --mode
- id: table
  doc: Table to index (only in 'table' mode)
  type: string
  inputBinding:
    prefix: --table
- id: index_name
  doc: Index name (only in 'table' mode)
  type: string
  inputBinding:
    prefix: --index_name
- id: queues
  doc: 'Number of indexing task queues (Tripal 2 only) [default: 10]'
  type: long
  inputBinding:
    prefix: --queues
- id: fields
  doc: "Fields to index (only in 'table' mode), syntax: <field_name>|<field_type>,\
    \ field_type should be one of 'string' (Tripal2), 'text' (Tripal3), 'keyword',\
    \ 'date', 'long', 'double', 'boolean', 'ip', 'object', 'nested', 'geo_point',\
    \ 'geo_shape', or 'completion'"
  type: string
  inputBinding:
    prefix: --fields
- id: links
  doc: 'List of links to show to users, syntax: <column-where- to-show-the-link>|</your/url/[any-column-name]>
    (Tripal 2 only)'
  type: string
  inputBinding:
    prefix: --links
- id: tokenizer
  doc: "Tokenizer to use (only in 'table' mode) (one of 'standard', 'letter', 'lowercase',\
    \ 'whitespace', 'uax_url_email', 'classic', 'ngram', 'edge_ngram', 'keywordx',\
    \ 'pattern', or 'path_hierarchy'; default='standard')  [default: standard]"
  type: string
  inputBinding:
    prefix: --tokenizer
- id: token_filters
  doc: Token filters (Tripal 3 only) (only in 'table' mode) (available filters are
    'standard', 'asciifolding', 'length', 'lowercase', 'uppercase') (Default to ['standard',
    'lowercase'])
  type: string
  inputBinding:
    prefix: --token_filters
- id: exposed
  doc: '"Expose the index (read-only) to other websites'
  type: boolean
  inputBinding:
    prefix: --exposed
- id: index_url
  doc: In order for other sites to link back to your results page, you must specify
    a path where the form for this index can be reached
  type: string
  inputBinding:
    prefix: --index_url
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
- db
- index
