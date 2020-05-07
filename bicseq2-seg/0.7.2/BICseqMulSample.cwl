class: CommandLineTool
id: BICseqMulSample.pl.cwl
inputs:
- id: lambda
  doc: ': the (positive) penalty used for BIC-seq'
  type: double
  inputBinding:
    prefix: --lambda
- id: tmp
  doc: ': the tmp directory; If unspecified, use /tmp/tmpq0pilrwk/bin/tmp/'
  type: string
  inputBinding:
    prefix: --tmp
- id: fig
  doc: ': plot the CNV profile in a png file'
  type: string
  inputBinding:
    prefix: --fig
- id: title
  doc: ': the title of the figure'
  type: string
  inputBinding:
    prefix: --title
- id: bootstrap
  doc: ': perform bootstrap test to assign confidence'
  type: boolean
  inputBinding:
    prefix: --bootstrap
- id: no_scale
  doc: ': do not automatically adjust the lambda parameter according to the noise
    level in the data'
  type: boolean
  inputBinding:
    prefix: --noscale
- id: strict
  doc: ': if specified, use a more stringent method to ajust the lambda parameter'
  type: boolean
  inputBinding:
    prefix: --strict
- id: detail
  doc: ': print the detailed information of the segmentaion result'
  type: boolean
  inputBinding:
    prefix: --detail
outputs: []
cwlVersion: v1.1
baseCommand:
- BICseqMulSample.pl
