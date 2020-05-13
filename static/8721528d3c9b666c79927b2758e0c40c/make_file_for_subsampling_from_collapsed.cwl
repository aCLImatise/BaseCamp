class: CommandLineTool
id: make_file_for_subsampling_from_collapsed.py.cwl
inputs:
- id: make
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: subsample_ready
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: from
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: iso_seq
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: collapsed
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: input_prefix
  doc: 'Collapsed prefix (default: hq_isoforms.fastq.no5merge. collapsed.min_fl_2.filtered)'
  type: string
  inputBinding:
    prefix: --input_prefix
- id: output_prefix
  doc: 'Output prefix (default: output.for_subsampling'
  type: string
  inputBinding:
    prefix: --output_prefix
- id: match_an_not_parsed
  doc: 'MatchAnnot parsed output (default: None)'
  type: string
  inputBinding:
    prefix: --matchAnnot_parsed
- id: sq_anti_class
  doc: 'SQANTI classification file (default: None)'
  type: string
  inputBinding:
    prefix: --sqanti_class
- id: demux
  doc: Demuxed FL count file - if provided, will be used instead of the <input_prefix>.abundance.txt
    file
  type: string
  inputBinding:
    prefix: --demux
- id: include_single_exons
  doc: 'Include single exons (default: OFF)'
  type: boolean
  inputBinding:
    prefix: --include_single_exons
outputs: []
cwlVersion: v1.1
baseCommand:
- make_file_for_subsampling_from_collapsed.py
