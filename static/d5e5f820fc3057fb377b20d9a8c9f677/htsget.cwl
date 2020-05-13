class: CommandLineTool
id: htsget.cwl
inputs:
- id: url
  doc: The URL of the object to retrieve
  type: string
  inputBinding:
    position: 0
- id: verbose
  doc: Increase verbosity.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: format
  doc: The format of data to request.
  type: string
  inputBinding:
    prefix: --format
- id: reference_name
  doc: The reference sequence name, for example 'chr1', '1', or 'chrX'. If unspecified,
    all data is returned.
  type: string
  inputBinding:
    prefix: --reference-name
- id: reference_md5
  doc: The MD5 checksum uniquely representing the requested reference sequence as
    a lower-case hexadecimal string, calculated as the MD5 of the upper-case sequence
    excluding all whitespace characters.
  type: string
  inputBinding:
    prefix: --reference-md5
- id: start
  doc: The start position of the range on the reference, 0-based, inclusive. If specified,
    reference-name or reference-md5 must also be specified.
  type: string
  inputBinding:
    prefix: --start
- id: end
  doc: The end position of the range on the reference, 0-based exclusive. If specified,
    reference-name or reference-md5 must also be specified.
  type: string
  inputBinding:
    prefix: --end
- id: output
  doc: The output file path. Defaults to stdout. If output is to stdout, the max-retries
    is set to zero, since retries are not supported when writing to this stream
  type: string
  inputBinding:
    prefix: --output
- id: max_retries
  doc: The maximum number of times to retry a failed transfer.
  type: long
  inputBinding:
    prefix: --max-retries
- id: retry_wait
  doc: The number of seconds to wait before retrying a failed transfer.
  type: string
  inputBinding:
    prefix: --retry-wait
- id: timeout
  doc: The socket timeout for transfers.
  type: string
  inputBinding:
    prefix: --timeout
- id: bearer_token
  doc: The OAuth2 bearer token to present to the htsget ticket server.
  type: string
  inputBinding:
    prefix: --bearer-token
outputs: []
cwlVersion: v1.1
baseCommand:
- htsget
