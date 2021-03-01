class: CommandLineTool
id: detectExtremeDepth.cwl
inputs:
- id: in_bigwig
  doc: '[file]     BigWig file path.'
  type: boolean?
  inputBinding:
    prefix: --bigwig
- id: in_output
  doc: "[dir]      Folder to send output to\n- named as input file with '.tab' extension"
  type: boolean?
  inputBinding:
    prefix: --output
- id: in_ref
  doc: "[str]         Restrict to this reference (mainly for testing)\n- without 'chr'\
    \ prefix, will test with and without the 'chr' for you.\n- if '-r' defined '.{val}'\
    \ will prefix '.bed'"
  type: boolean?
  inputBinding:
    prefix: --ref
- id: in_sd
  doc: '[int]          Number of standard deviations above mean for group to be included
    [12].'
  type: boolean?
  inputBinding:
    prefix: --sd
- id: in_decode
  doc: "[str]      Decode -r to chromosome names (do not include 'chr')\ne.g. -d 23:X\
    \ -d 24:Y -d 25:MT"
  type: boolean?
  inputBinding:
    prefix: --decode
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cgpbigwig:1.5.2--h93d22ca_0
cwlVersion: v1.1
baseCommand:
- detectExtremeDepth
