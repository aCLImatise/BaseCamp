class: CommandLineTool
id: ../../../fermi_correct.cwl
inputs:
- id: kmer_length_auto
  doc: k-mer length; -1 for auto [-1]
  type: long
  inputBinding:
    prefix: -k
- id: minimum_kmer_occurrences
  doc: minimum (k+1)-mer occurrences [3]
  type: long
  inputBinding:
    prefix: -O
- id: number_of_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: max_fraction_corrected
  doc: max fraction of corrected bases [0.30]
  type: double
  inputBinding:
    prefix: -C
- id: trim_read_down
  doc: trim read down to INT bp; 0 to disable [0]
  type: long
  inputBinding:
    prefix: -l
- id: step_size_disable
  doc: step size for the jumping heuristic; 0 to disable [5]
  type: long
  inputBinding:
    prefix: -s
- id: keep_badunfixable_reads
  doc: keep bad/unfixable reads
  type: boolean
  inputBinding:
    prefix: -K
- id: reads_dot_fmd
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: reads_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- correct
