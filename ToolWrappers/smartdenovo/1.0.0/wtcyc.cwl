class: CommandLineTool
id: wtcyc.cwl
inputs:
- id: in_number_of_threads
  doc: Number of threads, [1]
  type: long?
  inputBinding:
    prefix: -t
- id: in_total_parallel_jobs
  doc: Total parallel jobs, [1]
  type: long?
  inputBinding:
    prefix: -P
- id: in_index_current_p
  doc: "Index of current job (0-based), [0]\nSuppose to run it parallelly in 60 nodes.\
    \ For node1, -P 60 -p 0; node2, -P 60 -p 1, ..."
  type: long?
  inputBinding:
    prefix: -p
- id: in_output_reads_regions
  doc: Output of reads' regions after trimming, [-]
  type: string?
  inputBinding:
    prefix: -o
- id: in_output_of_alignments
  doc: Output of alignments, [NULL]
  type: string?
  inputBinding:
    prefix: -a
- id: in_force_overwrite_output
  doc: Force overwrite output file
  type: File?
  inputBinding:
    prefix: -f
- id: in_mininum_alignment_score
  doc: Mininum alignment score, [400]
  type: long?
  inputBinding:
    prefix: -s
- id: in_mininum_alignment_identity
  doc: Mininum alignment identity, [0.7]
  type: long?
  inputBinding:
    prefix: -m
- id: in_alignment_penalty_match
  doc: 'Alignment penalty: match, [2]'
  type: long?
  inputBinding:
    prefix: -M
- id: in_alignment_penalty_mismatch
  doc: 'Alignment penalty: mismatch, [-5]'
  type: long?
  inputBinding:
    prefix: -X
- id: in_alignment_penalty_gap_open
  doc: 'Alignment penalty: gap open, [-3]'
  type: long?
  inputBinding:
    prefix: -O
- id: in_alignment_penalty_gap_extension
  doc: 'Alignment penalty: gap extension, [-1]'
  type: long?
  inputBinding:
    prefix: -E
- id: in_alignment_penalty_read
  doc: 'Alignment penalty: read end clipping, 0: distable HSP extension, otherwise
    set to -30 or other [-100]'
  type: long?
  inputBinding:
    prefix: -T
- id: in_long_read_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force_overwrite_output
  doc: Force overwrite output file
  type: File?
  outputBinding:
    glob: $(inputs.in_force_overwrite_output)
hints: []
cwlVersion: v1.1
baseCommand:
- wtcyc
