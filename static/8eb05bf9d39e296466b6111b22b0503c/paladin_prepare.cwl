class: CommandLineTool
id: paladin_prepare.cwl
inputs:
- id: in_reference_database_uniprotkb
  doc: "<#>         Reference Database:\n1: UniProtKB Reviewed (Swiss-Prot)\n2: UniProtKB\
    \ Clustered 90% (UniRef90)"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_skip_download_use
  doc: Skip download, use local copy of reference database (may be indexed)
  type: string?
  inputBinding:
    prefix: -f
- id: in_http_socks_proxy
  doc: HTTP or SOCKS proxy address
  type: string?
  inputBinding:
    prefix: -P
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- paladin
- prepare
