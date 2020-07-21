class: CommandLineTool
id: ../../../pubmlst_download.cwl
inputs:
- id: scheme_name
  doc: scheme name
  type: string
  inputBinding:
    prefix: --scheme_name
- id: scheme_id
  doc: scheme id
  type: string
  inputBinding:
    prefix: --scheme_id
- id: outdir
  doc: output directory
  type: string
  inputBinding:
    prefix: --outdir
- id: base_url
  doc: 'Base URL for the API. Suggested values are: http://rest.pubmlst.org/db (default),
    https://bigsdb.pasteur.fr/api/db'
  type: string
  inputBinding:
    prefix: --base-url
outputs: []
cwlVersion: v1.1
baseCommand:
- pubmlst_download
