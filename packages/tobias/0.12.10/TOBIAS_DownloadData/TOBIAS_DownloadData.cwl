class: CommandLineTool
id: TOBIAS_DownloadData.cwl
inputs:
- id: in_endpoint
  doc: 'Link to the s3 server (default: The loosolab s3 server)'
  type: boolean?
  inputBinding:
    prefix: --endpoint
- id: in_bucket
  doc: 'Name of bucket to download (default: data-tobias-2020)'
  type: boolean?
  inputBinding:
    prefix: --bucket
- id: in_patterns
  doc: "List of patterns for files to download e.g. '*.txt' (default: *)"
  type: boolean?
  inputBinding:
    prefix: --patterns
- id: in_username
  doc: 'Username for endpoint (default: None set)'
  type: boolean?
  inputBinding:
    prefix: --username
- id: in_key
  doc: 'Access key for endpoint (default: None set)'
  type: boolean?
  inputBinding:
    prefix: --key
- id: in_yaml
  doc: "Set the endpoint/bucket/access information through a config file in\n.yaml\
    \ format (NOTE: overwrites commandline arguments)"
  type: boolean?
  inputBinding:
    prefix: --yaml
- id: in_force
  doc: 'Force download of already existing files (default: warn and skip)'
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_verbosity
  doc: "Level of output logging (0: silent, 1: errors/warnings, 2: info, 3:\nstats,\
    \ 4: debug, 5: spam) (default: 3)\n"
  type: long?
  inputBinding:
    prefix: --verbosity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tobias:0.12.10--py37h97743b1_0
cwlVersion: v1.1
baseCommand:
- TOBIAS
- DownloadData
