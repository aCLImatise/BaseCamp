class: CommandLineTool
id: ../../../paladin_prepare.cwl
inputs:
- id: reference_database_uniprotkb
  doc: '<#>         Reference Database: 1: UniProtKB Reviewed (Swiss-Prot) 2: UniProtKB
    Clustered 90% (UniRef90)'
  type: boolean
  inputBinding:
    prefix: -r
- id: skip_download_use
  doc: Skip download, use local copy of reference database (may be indexed)
  type: string
  inputBinding:
    prefix: -f
- id: http_socks_proxy
  doc: HTTP or SOCKS proxy address
  type: string
  inputBinding:
    prefix: -P
outputs: []
cwlVersion: v1.1
baseCommand:
- paladin
- prepare
