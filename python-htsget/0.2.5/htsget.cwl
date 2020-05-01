#!/usr/bin/env cwl-runner

baseCommand:
- htsget
class: CommandLineTool
cwlVersion: v1.0
id: htsget
inputs:
- doc: The URL of the object to retrieve
  id: url
  inputBinding:
    position: 0
  type: string
- doc: Increase verbosity.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: The format of data to request.
  id: format
  inputBinding:
    prefix: --format
  type: string
- doc: The reference sequence name, for example 'chr1', '1', or 'chrX'. If unspecified,
    all data is returned.
  id: reference_name
  inputBinding:
    prefix: --reference-name
  type: string
- doc: The MD5 checksum uniquely representing the requested reference sequence as
    a lower-case hexadecimal string, calculated as the MD5 of the upper-case sequence
    excluding all whitespace characters.
  id: reference_md5
  inputBinding:
    prefix: --reference-md5
  type: string
- doc: The start position of the range on the reference, 0-based, inclusive. If specified,
    reference-name or reference-md5 must also be specified.
  id: start
  inputBinding:
    prefix: --start
  type: string
- doc: The end position of the range on the reference, 0-based exclusive. If specified,
    reference-name or reference-md5 must also be specified.
  id: end
  inputBinding:
    prefix: --end
  type: string
- doc: The output file path. Defaults to stdout. If output is to stdout, the max-retries
    is set to zero, since retries are not supported when writing to this stream
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The maximum number of times to retry a failed transfer.
  id: max_retries
  inputBinding:
    prefix: --max-retries
  type: long
- doc: The number of seconds to wait before retrying a failed transfer.
  id: retry_wait
  inputBinding:
    prefix: --retry-wait
  type: string
- doc: The socket timeout for transfers.
  id: timeout
  inputBinding:
    prefix: --timeout
  type: string
- doc: The OAuth2 bearer token to present to the htsget ticket server.
  id: bearer_token
  inputBinding:
    prefix: --bearer-token
  type: string
