class: CommandLineTool
id: fermi_correct.cwl
inputs:
- id: in_kmer_length_auto
  doc: k-mer length; -1 for auto [-1]
  type: long?
  inputBinding:
    prefix: -k
- id: in_minimum_kmer_occurrences
  doc: minimum (k+1)-mer occurrences [3]
  type: long?
  inputBinding:
    prefix: -O
- id: in_number_of_threads
  doc: number of threads [1]
  type: long?
  inputBinding:
    prefix: -t
- id: in_max_fraction_corrected
  doc: max fraction of corrected bases [0.30]
  type: double?
  inputBinding:
    prefix: -C
- id: in_trim_read_bp
  doc: trim read down to INT bp; 0 to disable [0]
  type: long?
  inputBinding:
    prefix: -l
- id: in_step_size_jumping
  doc: step size for the jumping heuristic; 0 to disable [5]
  type: long?
  inputBinding:
    prefix: -s
- id: in_keep_badunfixable_reads
  doc: keep bad/unfixable reads
  type: boolean?
  inputBinding:
    prefix: -K
- id: in_reads_dot_fmd
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_reads_dot_fq
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
- fermi
- correct
