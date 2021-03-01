class: CommandLineTool
id: dazcon.cwl
inputs:
- id: in_verbose
  doc: Turns on verbose logging
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_only_proper_overlaps
  doc: Use only 'proper overlaps', i.e., align to the ends
  type: boolean?
  inputBinding:
    prefix: --only-proper-overlaps
- id: in_coverage_sort
  doc: Sort hits by coverage
  type: boolean?
  inputBinding:
    prefix: --coverage-sort
- id: in_max_hit
  doc: Maximum number of hits to pass to consensus
  type: long?
  inputBinding:
    prefix: --max-hit
- id: in_seq_file
  doc: (required)  Path to the sequences file
  type: File?
  inputBinding:
    prefix: --seq-file
- id: in_align_file
  doc: (required)  Path to the alignments file
  type: File?
  inputBinding:
    prefix: --align-file
- id: in_trim
  doc: Trim alignments on either size
  type: long?
  inputBinding:
    prefix: --trim
- id: in_min_len
  doc: Minimum length for correction
  type: long?
  inputBinding:
    prefix: --min-len
- id: in_min_coverage
  doc: Minimum coverage for correction
  type: long?
  inputBinding:
    prefix: --min-coverage
- id: in_threads
  doc: Number of consensus threads
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dazcon
