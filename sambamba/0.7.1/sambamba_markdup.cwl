class: CommandLineTool
id: sambamba_markdup.cwl
inputs:
- id: remove_duplicates
  doc: remove duplicates instead of just marking them
  type: boolean
  inputBinding:
    prefix: --remove-duplicates
- id: n_threads
  doc: number of threads to use
  type: string
  inputBinding:
    prefix: --nthreads
- id: compression_level
  doc: specify compression level of the resulting file (from 0 to 9)
  type: string
  inputBinding:
    prefix: --compression-level
- id: show_progress
  doc: show progressbar in STDERR
  type: boolean
  inputBinding:
    prefix: --show-progress
- id: tmpdir
  doc: specify directory for temporary files
  type: string
  inputBinding:
    prefix: --tmpdir
- id: hash_table_size
  doc: size of hash table for finding read pairs (default is 262144 reads); will be
    rounded down to the nearest power of two; should be > (average coverage) * (insert
    size) for good performance
  type: string
  inputBinding:
    prefix: --hash-table-size
- id: overflow_list_size
  doc: size of the overflow list where reads, thrown from the hash table, get a second
    chance to meet their pairs (default is 200000 reads); increasing the size reduces
    the number of temporary files created
  type: string
  inputBinding:
    prefix: --overflow-list-size
- id: sort_buffer_size
  doc: total amount of memory (in *megabytes*) used for sorting purposes; the default
    is 2048, increasing it will reduce the number of created temporary files and the
    time spent in the main thread
  type: string
  inputBinding:
    prefix: --sort-buffer-size
- id: io_buffer_size
  doc: two buffers of BUFFER_SIZE *megabytes* each are used for reading and writing
    BAM during the second pass (default is 128)
  type: string
  inputBinding:
    prefix: --io-buffer-size
outputs: []
cwlVersion: v1.1
baseCommand:
- sambamba
- markdup
