class: CommandLineTool
id: xcfinfo.cwl
inputs:
- id: v
  doc: show version (--version)
  type: boolean
  inputBinding:
    prefix: -V
- id: v
  doc: show progress messages (--verbose)
  type: boolean
  inputBinding:
    prefix: -v
- id: j
  doc: input is bzip2 compressed (--bzip)
  type: boolean
  inputBinding:
    prefix: -j
- id: p
  doc: use 'string' to separate the groups in the paths (--path-separator)
  type: string
  inputBinding:
    prefix: -p
- id: z
  doc: input is gzip compressed (--gzip)
  type: boolean
  inputBinding:
    prefix: -z
- id: z
  doc: use 'command' to decompress input (--unpack)
  type: string
  inputBinding:
    prefix: -Z
- id: u
  doc: use UTF-8 for layer names (--utf8)
  type: boolean
  inputBinding:
    prefix: -u
outputs: []
cwlVersion: v1.1
baseCommand:
- xcfinfo
