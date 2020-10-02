class: CommandLineTool
id: intrahost.py_vphaser_one_sample.cwl
inputs:
- id: in_v_phaser_num_threads
  doc: Number of threads in call to V-Phaser 2.
  type: long
  inputBinding:
    prefix: --vphaserNumThreads
- id: in_min_reads_each
  doc: 'Minimum number of reads on each strand (default: 5).'
  type: long
  inputBinding:
    prefix: --minReadsEach
- id: in_max_bias
  doc: "Maximum allowable ratio of number of reads on the two\nstrands (default: 10).\
    \ Ignored if minReadsEach = 0."
  type: long
  inputBinding:
    prefix: --maxBias
- id: in_remove_doubly_mapped_reads
  doc: "When calling V-Phaser, remove reads mapping to more\nthan one contig. Default\
    \ is to keep the reads."
  type: boolean
  inputBinding:
    prefix: --removeDoublyMappedReads
- id: in_loglevel
  doc: 'Verboseness of output. [default: DEBUG]'
  type: string
  inputBinding:
    prefix: --loglevel
- id: in_in_bam
  doc: Input Bam file.
  type: string
  inputBinding:
    position: 0
- id: in_in_cons_fast_a
  doc: Consensus assembly fasta.
  type: string
  inputBinding:
    position: 1
- id: in_out_tab
  doc: Tab-separated headerless output file.
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- intrahost.py
- vphaser_one_sample
