class: CommandLineTool
id: TOBIAS_DownloadData.cwl
inputs:
- id: endpoint
  doc: 'Link to the s3 server (default: The loosolab s3 server)'
  type: boolean
  inputBinding:
    prefix: --endpoint
- id: bucket
  doc: 'Name of bucket to download (default: data-tobias-2020)'
  type: boolean
  inputBinding:
    prefix: --bucket
- id: patterns
  doc: "List of patterns for files to download e.g. '*.txt' (default: *)"
  type: boolean
  inputBinding:
    prefix: --patterns
- id: username
  doc: 'Username for endpoint (default: None set)'
  type: boolean
  inputBinding:
    prefix: --username
- id: key
  doc: 'Access key for endpoint (default: None set)'
  type: boolean
  inputBinding:
    prefix: --key
- id: yaml
  doc: 'Set the endpoint/bucket/access information through a config file in .yaml
    format (NOTE: overwrites commandline arguments)'
  type: boolean
  inputBinding:
    prefix: --yaml
- id: force
  doc: 'Force download of already existing files (default: warn and skip)'
  type: boolean
  inputBinding:
    prefix: --force
- id: verbosity
  doc: 'Level of output logging (0: silent, 1: errors/warnings, 2: info, 3: stats,
    4: debug, 5: spam) (default: 3)'
  type: long
  inputBinding:
    prefix: --verbosity
outputs: []
cwlVersion: v1.1
baseCommand:
- TOBIAS
- DownloadData
