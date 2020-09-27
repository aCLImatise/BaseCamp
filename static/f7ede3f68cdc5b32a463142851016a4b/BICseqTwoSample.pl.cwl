class: CommandLineTool
id: BICseqTwoSample.pl.cwl
inputs:
- id: in_lambda
  doc: ': the (positive) penalty used for BIC-seq'
  type: double
  inputBinding:
    prefix: --lambda
- id: in_tmp
  doc: ': the tmp directory; If unspecified, use /usr/local/bin/tmp/'
  type: Directory
  inputBinding:
    prefix: --tmp
- id: in_fig
  doc: ': plot the CNV profile in a png file'
  type: File
  inputBinding:
    prefix: --fig
- id: in_title
  doc: ': the title of the figure'
  type: string
  inputBinding:
    prefix: --title
- id: in_nrm
  doc: ': do not remove likely germline CNVs'
  type: boolean
  inputBinding:
    prefix: --nrm
- id: in_bootstrap
  doc: ': perform bootstrap test to assign confidence'
  type: boolean
  inputBinding:
    prefix: --bootstrap
- id: in_no_scale
  doc: ': do not automatically adjust the lambda parameter according to the noise
    level in the data'
  type: boolean
  inputBinding:
    prefix: --noscale
- id: in_strict
  doc: ': if specified, use a more stringent method to ajust the lambda parameter'
  type: boolean
  inputBinding:
    prefix: --strict
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- BICseqTwoSample.pl
