class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vcf_query.cwl
inputs:
- id: columns
  doc: List of comma-separated column names or one column name per line in a file.
  type: File
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
- id: file_dot_vcf_do_tgz
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf-query
