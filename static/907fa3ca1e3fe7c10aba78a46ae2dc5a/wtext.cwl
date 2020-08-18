class: CommandLineTool
id: ../../../wtext.cwl
inputs:
- id: number_of_threads
  doc: Number of threads, [1]
  type: long
  inputBinding:
    prefix: -t
- id: total_parallel_jobs
  doc: Total parallel jobs, [1]
  type: long
  inputBinding:
    prefix: -P
- id: index_current_based
  doc: Index of current job (0-based), [0] Suppose to run it parallelly in 60 nodes.
    For node1, -P 60 -p 0; node2, -P 60 -p 1, ...
  type: long
  inputBinding:
    prefix: -p
- id: long_reads_file
  doc: Long reads sequences file, + *
  type: string
  inputBinding:
    prefix: -i
- id: long_reads_previous_region
  doc: 'Long reads previous retained region, often from wtcyc, + Format: read_name\toffset\tlength'
  type: string
  inputBinding:
    prefix: -B
- id: long_reads_retained_region
  doc: 'Long reads retained region, often from wtobt, + Format: read_name\toffset\tlength'
  type: string
  inputBinding:
    prefix: -b
- id: overlap_files_readsttlentbegtendtreadsttlentbegtendtscoretidentityfloattmattmistinstdeltcigar
  doc: 'Overlap file(s), + * Format: reads1\t+/-\tlen1\tbeg1\tend1\treads2\t+/-\tlen2\tbeg2\tend2\tscore\tidentity<float>\tmat\tmis\tins\tdel\tcigar'
  type: string
  inputBinding:
    prefix: -j
- id: output_file_extended
  doc: Output file of extended alignments, -:stdout, *
  type: string
  inputBinding:
    prefix: -o
- id: force_overwrite
  doc: Force overwrite
  type: boolean
  inputBinding:
    prefix: -f
- id: bandwidth
  doc: Bandwidth, [800]
  type: double
  inputBinding:
    prefix: -W
- id: alignment_penalty_match
  doc: 'Alignment penalty: match, [2]'
  type: long
  inputBinding:
    prefix: -M
- id: alignment_penalty_mismatch
  doc: 'Alignment penalty: mismatch, [-5]'
  type: long
  inputBinding:
    prefix: -X
- id: alignment_penalty_insertion
  doc: 'Alignment penalty: insertion or deletion, [-3]'
  type: long
  inputBinding:
    prefix: -O
- id: alignment_penalty_gap
  doc: 'Alignment penalty: gap extension, [-1]'
  type: long
  inputBinding:
    prefix: -E
- id: alignment_penalty_read
  doc: 'Alignment penalty: read end clipping [-100]'
  type: long
  inputBinding:
    prefix: -T
- id: maximum_extension_bp
  doc: Maximum extension (bp) in each end, [400]
  type: long
  inputBinding:
    prefix: -S
outputs: []
cwlVersion: v1.1
baseCommand:
- wtext
