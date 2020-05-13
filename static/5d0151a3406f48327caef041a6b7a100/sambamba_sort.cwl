class: CommandLineTool
id: sambamba_sort.cwl
inputs:
- id: samba_mba_sort
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: memory_limit
  doc: approximate total memory limit for all threads (by default 2GB)
  type: string
  inputBinding:
    prefix: --memory-limit
- id: tmpdir
  doc: directory for storing intermediate files; default is system directory for temporary
    files
  type: string
  inputBinding:
    prefix: --tmpdir
- id: out
  doc: output file name; if not provided, the result is written to a file with .sorted.bam
    extension
  type: string
  inputBinding:
    prefix: --out
- id: sort_by_name
  doc: sort by read name instead of coordinate (lexicographical order)
  type: boolean
  inputBinding:
    prefix: --sort-by-name
- id: sort_picard
  doc: sort by query name like in picard
  type: boolean
  inputBinding:
    prefix: --sort-picard
- id: natural_sort
  doc: sort by read name instead of coordinate (so-called 'natural' sort as in samtools)
  type: boolean
  inputBinding:
    prefix: --natural-sort
- id: match_mates
  doc: pull mates of the same alignment together when sorting by read name
  type: boolean
  inputBinding:
    prefix: --match-mates
- id: compression_level
  doc: level of compression for sorted BAM, from 0 to 9
  type: string
  inputBinding:
    prefix: --compression-level
- id: uncompressed_chunks
  doc: write sorted chunks as uncompressed BAM (default is writing with compression
    level 1), that might be faster in some cases but uses more disk space
  type: boolean
  inputBinding:
    prefix: --uncompressed-chunks
- id: show_progress
  doc: show progressbar in STDERR
  type: boolean
  inputBinding:
    prefix: --show-progress
- id: n_threads
  doc: use specified number of threads
  type: string
  inputBinding:
    prefix: --nthreads
- id: filter
  doc: keep only reads that satisfy FILTER
  type: string
  inputBinding:
    prefix: --filter
outputs: []
cwlVersion: v1.1
baseCommand:
- sambamba
- sort
