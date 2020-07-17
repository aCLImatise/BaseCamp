class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/autoSql.cwl
inputs:
- id: dblink
  doc: '- optionally generates code to execute queries and updates of the table.'
  type: boolean
  inputBinding:
    prefix: -dbLink
- id: add_bin
  doc: '- Add an initial bin field and index it as (chrom,bin)'
  type: boolean
  inputBinding:
    prefix: -addBin
- id: with_null
  doc: "- optionally generates code and .sql to enable applications to accept and\
    \ load data into objects with potential 'missing data' (NULL in SQL) situations."
  type: boolean
  inputBinding:
    prefix: -withNull
- id: default_zeros
  doc: '- will put zero and or empty string as default value'
  type: boolean
  inputBinding:
    prefix: -defaultZeros
- id: django
  doc: '- generate method to output object as django model Python code'
  type: boolean
  inputBinding:
    prefix: -django
- id: json
  doc: '- generate method to output the object in JSON (JavaScript) format.'
  type: boolean
  inputBinding:
    prefix: -json
- id: spec_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_root
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- autoSql
