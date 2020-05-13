class: CommandLineTool
id: rm_low_coverage_duplicated_contigs.py.cwl
inputs:
- id: cov_t
  doc: 'With ratio (coverage of query/coverage of subject) below which, the query
    would be exposed to discarded. Default: 0.12'
  type: string
  inputBinding:
    prefix: --cov-t
- id: len_t
  doc: 'With overlap (length of hit of query/ length of query) above which, the query
    would be exposed to discarded. Default: 0.9'
  type: long
  inputBinding:
    prefix: --len-t
- id: blur
  doc: Replace hit low-coverage bases with N.
  type: boolean
  inputBinding:
    prefix: --blur
- id: keep_temp
  doc: Keep temp blast files.
  type: boolean
  inputBinding:
    prefix: --keep-temp
- id: which_blast
  doc: Assign the path to BLAST binary files if not added to the path.
  type: string
  inputBinding:
    prefix: --which-blast
- id: o
  doc: 'Output directory. Default: along with the original file'
  type: string
  inputBinding:
    prefix: -o
- id: threads
  doc: Threads of blastn.
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- rm_low_coverage_duplicated_contigs.py
