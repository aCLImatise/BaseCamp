class: CommandLineTool
id: pyega3_fetch.cwl
inputs:
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
- id: in_format
  doc: The format of data to request.
  type: string
  inputBinding:
    prefix: --format
- id: in_max_retries
  doc: "The maximum number of times to retry a failed\ntransfer. Any negative number\
    \ means infinite number of\nretries."
  type: long
  inputBinding:
    prefix: --max-retries
- id: in_retry_wait
  doc: "The number of seconds to wait before retrying a failed\ntransfer."
  type: long
  inputBinding:
    prefix: --retry-wait
- id: in_save_to
  doc: '[SAVETO]     Output file(for files)/output dir(for datasets)'
  type: File
  inputBinding:
    prefix: --saveto
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_save_to
  doc: '[SAVETO]     Output file(for files)/output dir(for datasets)'
  type: File
  outputBinding:
    glob: $(inputs.in_save_to)
cwlVersion: v1.1
baseCommand:
- pyega3
- fetch
