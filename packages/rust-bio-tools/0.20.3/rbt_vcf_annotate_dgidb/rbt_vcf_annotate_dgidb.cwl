class: CommandLineTool
id: rbt_vcf_annotate_dgidb.cwl
inputs:
- id: in_api_path
  doc: "Url prefix for requesting interaction drugs by gene names [default:\nhttp://dgidb.org/api/v2/interactions.json?genes=]"
  type: File?
  inputBinding:
    prefix: --api-path
- id: in_data_sources
  doc: "...\nA list of data sources included in query. If omitted all sources are\
    \ considered. A list of all sources can\nbe found at http://dgidb.org/api/v2/interaction_sources.json"
  type: long?
  inputBinding:
    prefix: --datasources
- id: in_field
  doc: 'Info field name to be used for annotation [default: dgiDB_drugs]'
  type: string?
  inputBinding:
    prefix: --field
- id: in_genes_per_request
  doc: "Number of genes to submit per api request. A lower value increases the number\
    \ of api requests in return. Too\nmany requests could be rejected by the DGIdb\
    \ server [default: 500]"
  type: long?
  inputBinding:
    prefix: --genes-per-request
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rust-bio-tools:0.20.3--h4eb7995_3
cwlVersion: v1.1
baseCommand:
- rbt
- vcf-annotate-dgidb
