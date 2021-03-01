class: CommandLineTool
id: tripaille_db_index.cwl
inputs:
- id: in_mode
  doc: "Indexing mode: 'website' to index the website ,\n'nodes' for the website nodes,\
    \ 'entities' for the\nwebsite entities (Tripal 3), 'table' to index a single\n\
    table, 'gene' to build a Gene search index (Tripal 3\nonly) (default: website)\
    \ ('website' default to 'nodes'\nfor Tripal 2, 'entities' for Tripal 3)  [default:\n\
    website]"
  type: long?
  inputBinding:
    prefix: --mode
- id: in_table
  doc: Table to index (only in 'table' mode)
  type: string?
  inputBinding:
    prefix: --table
- id: in_index_name
  doc: Index name (only in 'table' mode)
  type: string?
  inputBinding:
    prefix: --index_name
- id: in_queues
  doc: "Number of indexing task queues (Tripal 2 only)\n[default: 10]"
  type: long?
  inputBinding:
    prefix: --queues
- id: in_fields
  doc: "Fields to index (only in 'table' mode), syntax:\n<field_name>|<field_type>,\
    \ field_type should be one of\n'string' (Tripal2), 'text' (Tripal3), 'keyword',\n\
    'date', 'long', 'double', 'boolean', 'ip', 'object',\n'nested', 'geo_point', 'geo_shape',\
    \ or 'completion'"
  type: boolean?
  inputBinding:
    prefix: --fields
- id: in_links
  doc: "List of links to show to users, syntax: <column-where-\nto-show-the-link>|</your/url/[any-column-name]>\n\
    (Tripal 2 only)"
  type: long?
  inputBinding:
    prefix: --links
- id: in_tokenizer
  doc: "Tokenizer to use (only in 'table' mode) (one of\n'standard', 'letter', 'lowercase',\
    \ 'whitespace',\n'uax_url_email', 'classic', 'ngram', 'edge_ngram',\n'keywordx',\
    \ 'pattern', or 'path_hierarchy';\ndefault='standard')  [default: standard]"
  type: string?
  inputBinding:
    prefix: --tokenizer
- id: in_token_filters
  doc: "Token filters (Tripal 3 only) (only in 'table' mode)\n(available filters are\
    \ 'standard', 'asciifolding',\n'length', 'lowercase', 'uppercase') (Default to\n\
    ['standard', 'lowercase'])"
  type: long?
  inputBinding:
    prefix: --token_filters
- id: in_exposed
  doc: '"Expose the index (read-only) to other websites'
  type: boolean?
  inputBinding:
    prefix: --exposed
- id: in_index_url
  doc: "In order for other sites to link back to your results\npage, you must specify\
    \ a path where the form for this\nindex can be reached"
  type: File?
  inputBinding:
    prefix: --index_url
- id: in_job_name
  doc: Name of the job
  type: string?
  inputBinding:
    prefix: --job_name
- id: in_no_wait
  doc: Do not wait for job to complete
  type: boolean?
  inputBinding:
    prefix: --no_wait
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tripaille
- db
- index
