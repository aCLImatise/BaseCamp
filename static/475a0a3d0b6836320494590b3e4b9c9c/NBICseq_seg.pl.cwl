class: CommandLineTool
id: NBICseq_seg.pl.cwl
inputs:
- id: in_lambda
  doc: ': the (positive) penalty used for BIC-seq'
  type: double?
  inputBinding:
    prefix: --lambda
- id: in_tmp
  doc: ': the tmp directory; If unspecified, use /usr/local/bin/tmp/'
  type: Directory?
  inputBinding:
    prefix: --tmp
- id: in_fig
  doc: ': plot the CNV profile in a png file'
  type: File?
  inputBinding:
    prefix: --fig
- id: in_title
  doc: ': the title of the figure'
  type: string?
  inputBinding:
    prefix: --title
- id: in_nrm
  doc: ': do not remove likely germline CNVs (with a matched normal) or segments with
    bad mappability (without a matched normal)'
  type: boolean?
  inputBinding:
    prefix: --nrm
- id: in_bootstrap
  doc: ': perform bootstrap test to assign confidence (only for one sample case)'
  type: boolean?
  inputBinding:
    prefix: --bootstrap
- id: in_no_scale
  doc: ': do not automatically adjust the lambda parameter according to the noise
    level in the data'
  type: boolean?
  inputBinding:
    prefix: --noscale
- id: in_strict
  doc: ': if specified, use a more stringent method to ajust the lambda parameter'
  type: boolean?
  inputBinding:
    prefix: --strict
- id: in_control
  doc: ': the data has a control genome'
  type: boolean?
  inputBinding:
    prefix: --control
- id: in_detail
  doc: ': if specified, print the detailed segmentation result (for multiSample only)'
  type: boolean?
  inputBinding:
    prefix: --detail
- id: in_config_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- NBICseq-seg.pl
