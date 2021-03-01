class: CommandLineTool
id: wtext.cwl
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
- id: in_long_reads_file
  doc: Long reads sequences file, + *
  type: File?
  inputBinding:
    prefix: -i
- id: in_long_reads_previous_region
  doc: "Long reads previous retained region, often from wtcyc, +\nFormat: read_name\\\
    toffset\\tlength"
  type: string?
  inputBinding:
    prefix: -B
- id: in_long_reads_retained_region
  doc: "Long reads retained region, often from wtobt, +\nFormat: read_name\\toffset\\\
    tlength"
  type: string?
  inputBinding:
    prefix: -b
- id: in_overlap_files_readsttlentbegtendtreadsttlentbegtendtscoretidentityfloattmattmistinstdeltcigar
  doc: "Overlap file(s), + *\nFormat: reads1\\t+/-\\tlen1\\tbeg1\\tend1\\treads2\\\
    t+/-\\tlen2\\tbeg2\\tend2\\tscore\\tidentity<float>\\tmat\\tmis\\tins\\tdel\\\
    tcigar"
  type: double?
  inputBinding:
    prefix: -j
- id: in_output_file_extended
  doc: Output file of extended alignments, -:stdout, *
  type: File?
  inputBinding:
    prefix: -o
- id: in_force_overwrite
  doc: Force overwrite
  type: boolean?
  inputBinding:
    prefix: -f
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
- id: in_alignment_penalty_insertion
  doc: 'Alignment penalty: insertion or deletion, [-3]'
  type: long?
  inputBinding:
    prefix: -O
- id: in_alignment_penalty_gap
  doc: 'Alignment penalty: gap extension, [-1]'
  type: long?
  inputBinding:
    prefix: -E
- id: in_alignment_penalty_read
  doc: 'Alignment penalty: read end clipping [-100]'
  type: long?
  inputBinding:
    prefix: -T
- id: in_maximum_extension_bp
  doc: Maximum extension (bp) in each end, [400]
  type: long?
  inputBinding:
    prefix: -S
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_extended
  doc: Output file of extended alignments, -:stdout, *
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_extended)
hints: []
cwlVersion: v1.1
baseCommand:
- wtext
