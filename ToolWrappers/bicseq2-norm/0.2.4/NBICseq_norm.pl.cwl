class: CommandLineTool
id: NBICseq_norm.pl.cwl
inputs:
- id: in__fragment_size
  doc: ': fragment size'
  type: long?
  inputBinding:
    prefix: -s
- id: in_subsample_percentage_default
  doc: ': a subsample percentage: default 0.0002.'
  type: double?
  inputBinding:
    prefix: -p
- id: in_bin_expected_observed
  doc: ': bin the expected and observed as <int> bp bins; Default 100.'
  type: long?
  inputBinding:
    prefix: -b
- id: in_gc_bin
  doc: ': if specified, report the GC-content in the bins'
  type: boolean?
  inputBinding:
    prefix: --gc_bin
- id: in_no_map_bin
  doc: ': if specified, do NOT bin the reads according to the mappability'
  type: boolean?
  inputBinding:
    prefix: --NoMapBin
- id: in_bin_only
  doc: ': only bin the reads without normalization'
  type: boolean?
  inputBinding:
    prefix: --bin_only
- id: in_fig
  doc: ': plot the read count VS GC figure in the specified file (in pdf format)'
  type: File?
  inputBinding:
    prefix: --fig
- id: in_title
  doc: ': title of the figure'
  type: string?
  inputBinding:
    prefix: --title
- id: in_tmp
  doc: ': the tmp directory; If unspecified, use /usr/local/bin/tmp/'
  type: Directory?
  inputBinding:
    prefix: --tmp
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
- NBICseq-norm.pl
