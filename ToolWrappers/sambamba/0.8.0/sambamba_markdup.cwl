class: CommandLineTool
id: sambamba_markdup.cwl
inputs:
- id: in_remove_duplicates
  doc: remove duplicates instead of just marking them
  type: boolean?
  inputBinding:
    prefix: --remove-duplicates
- id: in_n_threads
  doc: number of threads to use
  type: long?
  inputBinding:
    prefix: --nthreads
- id: in_compression_level
  doc: specify compression level of the resulting file (from 0 to 9)
  type: File?
  inputBinding:
    prefix: --compression-level
- id: in_show_progress
  doc: show progressbar in STDERR
  type: boolean?
  inputBinding:
    prefix: --show-progress
- id: in_tmpdir
  doc: specify directory for temporary files
  type: Directory?
  inputBinding:
    prefix: --tmpdir
- id: in_hash_table_size
  doc: "size of hash table for finding read pairs (default is 262144 reads);\nwill\
    \ be rounded down to the nearest power of two;\nshould be > (average coverage)\
    \ * (insert size) for good performance"
  type: long?
  inputBinding:
    prefix: --hash-table-size
- id: in_overflow_list_size
  doc: "size of the overflow list where reads, thrown from the hash table,\nget a\
    \ second chance to meet their pairs (default is 200000 reads);\nincreasing the\
    \ size reduces the number of temporary files created"
  type: long?
  inputBinding:
    prefix: --overflow-list-size
- id: in_sort_buffer_size
  doc: "total amount of memory (in *megabytes*) used for sorting purposes;\nthe default\
    \ is 2048, increasing it will reduce the number of created\ntemporary files and\
    \ the time spent in the main thread"
  type: long?
  inputBinding:
    prefix: --sort-buffer-size
- id: in_io_buffer_size
  doc: "two buffers of BUFFER_SIZE *megabytes* each are used\nfor reading and writing\
    \ BAM during the second pass (default is 128)\n"
  type: long?
  inputBinding:
    prefix: --io-buffer-size
- id: in_samba_mba_mark_dup
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sambamba:0.8.0--h984e79f_0
cwlVersion: v1.1
baseCommand:
- sambamba
- markdup
