class: CommandLineTool
id: NBICseq_seg.pl.cwl
inputs:
- id: config_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 1
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
- id: nrm
  doc: ': do not remove likely germline CNVs (with a matched normal) or segments with
    bad mappability (without a matched normal)'
  type: boolean
  inputBinding:
    prefix: --nrm
- id: bootstrap
  doc: ': perform bootstrap test to assign confidence (only for one sample case)'
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
- id: control
  doc: ': the data has a control genome'
  type: boolean
  inputBinding:
    prefix: --control
- id: detail
  doc: ': if specified, print the detailed segmentation result (for multiSample only)'
  type: boolean
  inputBinding:
    prefix: --detail
outputs: []
cwlVersion: v1.1
baseCommand:
- NBICseq-seg.pl
