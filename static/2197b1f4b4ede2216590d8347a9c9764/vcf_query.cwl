class: CommandLineTool
id: vcf_query.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_vcf_gz
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: columns
  doc: <file|list>           List of comma-separated column names or one column name
    per line in a file.
  type: boolean
  inputBinding:
    prefix: --columns
- id: format
  doc: The default is '%CHROM:%POS\t%REF[\t%SAMPLE=%GT]\n'
  type: string
  inputBinding:
    prefix: --format
- id: list_columns
  doc: List columns.
  type: boolean
  inputBinding:
    prefix: --list-columns
- id: region
  doc: :from-to            Retrieve the region. (Runs tabix.)
  type: string
  inputBinding:
    prefix: --region
- id: use_old_method
  doc: Use old version of API, which is slow but more robust.
  type: boolean
  inputBinding:
    prefix: --use-old-method
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf-query
