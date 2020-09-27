class: CommandLineTool
id: swissprot_to_table.rb.cwl
inputs:
- id: in_output
  doc: An explicitly named output file.
  type: File
  inputBinding:
    prefix: --output
- id: in_debug
  doc: Run in debug mode [false]
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_database
  doc: Uniprot flatfile database containing full records for proteins
  type: File
  inputBinding:
    prefix: --database
- id: in_keys
  doc: Filter output to only the specified keys (comma separated)
  type: string
  inputBinding:
    prefix: --keys
- id: in_show_keys
  doc: Print a list of possible values for the keys field and exit [false]
  type: boolean
  inputBinding:
    prefix: --show-keys
- id: in_separator
  doc: Separator character for output, default (tab) [    ]
  type: string
  inputBinding:
    prefix: --separator
- id: in_array_separator
  doc: Array Separator character, default , [,]
  type: string
  inputBinding:
    prefix: --array-separator
- id: in_query_separator
  doc: Separator character for queries.txt, default is tab [      ]
  type: string
  inputBinding:
    prefix: --query-separator
- id: in_id_column
  doc: Column in queries.txt in which Uniprot Accessions are found [1]
  type: long
  inputBinding:
    prefix: --id-column
- id: in_queries_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: An explicitly named output file.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- swissprot_to_table.rb
