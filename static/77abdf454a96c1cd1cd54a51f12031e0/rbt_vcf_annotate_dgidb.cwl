class: CommandLineTool
id: rbt_vcf_annotate_dgidb.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: vcf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: api_path
  doc: 'url prefix for requesting interaction drugs by gene names. [default: http://dgidb.org/api/v2/interactions.json?genes=]'
  type: string
  inputBinding:
    prefix: --api-path
- id: field
  doc: 'Info field name to be used for annotation. [default: dgiDB_drugs]'
  type: string
  inputBinding:
    prefix: --field
- id: genes_per_request
  doc: 'Number of genes to submit per api request. A lower value increases the number
    of api requests in return.  Too many requests could be rejected by the DGIdb server.
    [default: 500]'
  type: string
  inputBinding:
    prefix: --genes-per-request
outputs: []
cwlVersion: v1.1
baseCommand:
- rbt
- vcf-annotate-dgidb
