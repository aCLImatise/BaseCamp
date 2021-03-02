class: CommandLineTool
id: rbt_vcf_annotate_dgidb.cwl
inputs:
- id: in_api_path
  doc: "url prefix for requesting interaction drugs by gene names. [default:\nhttp://dgidb.org/api/v2/interactions.json?genes=]"
  type: File?
  inputBinding:
    prefix: --api-path
- id: in_field
  doc: 'Info field name to be used for annotation. [default: dgiDB_drugs]'
  type: string?
  inputBinding:
    prefix: --field
- id: in_genes_per_request
  doc: "Number of genes to submit per api request. A lower value increases the number\
    \ of api requests in return.\nToo many requests could be rejected by the DGIdb\
    \ server.\n[default: 500]"
  type: long?
  inputBinding:
    prefix: --genes-per-request
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rbt
- vcf-annotate-dgidb
