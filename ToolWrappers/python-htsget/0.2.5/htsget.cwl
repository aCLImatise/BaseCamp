class: CommandLineTool
id: htsget.cwl
inputs:
- id: in_verbose
  doc: Increase verbosity.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_format
  doc: The format of data to request.
  type: string
  inputBinding:
    prefix: --format
- id: in_reference_name
  doc: "The reference sequence name, for example 'chr1', '1',\nor 'chrX'. If unspecified,\
    \ all data is returned."
  type: long
  inputBinding:
    prefix: --reference-name
- id: in_reference_md_five
  doc: "The MD5 checksum uniquely representing the requested\nreference sequence as\
    \ a lower-case hexadecimal string,\ncalculated as the MD5 of the upper-case sequence\n\
    excluding all whitespace characters."
  type: long
  inputBinding:
    prefix: --reference-md5
- id: in_start
  doc: "The start position of the range on the reference,\n0-based, inclusive. If\
    \ specified, reference-name or\nreference-md5 must also be specified."
  type: long
  inputBinding:
    prefix: --start
- id: in_end
  doc: "The end position of the range on the reference,\n0-based exclusive. If specified,\
    \ reference-name or\nreference-md5 must also be specified."
  type: long
  inputBinding:
    prefix: --end
- id: in_output
  doc: "The output file path. Defaults to stdout. If output is\nto stdout, the max-retries\
    \ is set to zero, since\nretries are not supported when writing to this stream"
  type: long
  inputBinding:
    prefix: --output
- id: in_max_retries
  doc: "The maximum number of times to retry a failed\ntransfer."
  type: long
  inputBinding:
    prefix: --max-retries
- id: in_retry_wait
  doc: "The number of seconds to wait before retrying a failed\ntransfer."
  type: long
  inputBinding:
    prefix: --retry-wait
- id: in_timeout
  doc: The socket timeout for transfers.
  type: string
  inputBinding:
    prefix: --timeout
- id: in_bearer_token
  doc: "The OAuth2 bearer token to present to the htsget\nticket server.\n"
  type: long
  inputBinding:
    prefix: --bearer-token
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- htsget
