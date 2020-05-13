class: CommandLineTool
id: pyega3_fetch.cwl
inputs:
- id: identifier
  doc: Id for dataset (e.g. EGAD00000000001) or file (e.g. EGAF12345678901)
  type: string
  inputBinding:
    position: 0
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
- id: format
  doc: The format of data to request.
  type: string
  inputBinding:
    prefix: --format
- id: max_retries
  doc: The maximum number of times to retry a failed transfer. Any negative number
    means infinite number of retries.
  type: long
  inputBinding:
    prefix: --max-retries
- id: retry_wait
  doc: The number of seconds to wait before retrying a failed transfer.
  type: string
  inputBinding:
    prefix: --retry-wait
- id: save_to
  doc: '[SAVETO]     Output file(for files)/output dir(for datasets)'
  type: boolean
  inputBinding:
    prefix: --saveto
outputs: []
cwlVersion: v1.1
baseCommand:
- pyega3
- fetch
