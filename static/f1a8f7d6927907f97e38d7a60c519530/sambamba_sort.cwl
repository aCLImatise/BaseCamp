class: CommandLineTool
id: sambamba_sort.cwl
inputs:
- id: in_memory_limit
  doc: approximate total memory limit for all threads (by default 2GB)
  type: long?
  inputBinding:
    prefix: --memory-limit
- id: in_tmpdir
  doc: directory for storing intermediate files; default is system directory for temporary
    files
  type: Directory?
  inputBinding:
    prefix: --tmpdir
- id: in_out
  doc: output file name; if not provided, the result is written to a file with .sorted.bam
    extension
  type: File?
  inputBinding:
    prefix: --out
- id: in_sort_by_name
  doc: sort by read name instead of coordinate (lexicographical order)
  type: boolean?
  inputBinding:
    prefix: --sort-by-name
- id: in_sort_picard
  doc: sort by query name like in picard
  type: boolean?
  inputBinding:
    prefix: --sort-picard
- id: in_natural_sort
  doc: sort by read name instead of coordinate (so-called 'natural' sort as in samtools)
  type: boolean?
  inputBinding:
    prefix: --natural-sort
- id: in_match_mates
  doc: pull mates of the same alignment together when sorting by read name
  type: boolean?
  inputBinding:
    prefix: --match-mates
- id: in_compression_level
  doc: level of compression for sorted BAM, from 0 to 9
  type: long?
  inputBinding:
    prefix: --compression-level
- id: in_uncompressed_chunks
  doc: write sorted chunks as uncompressed BAM (default is writing with compression
    level 1), that might be faster in some cases but uses more disk space
  type: boolean?
  inputBinding:
    prefix: --uncompressed-chunks
- id: in_show_progress
  doc: show progressbar in STDERR
  type: boolean?
  inputBinding:
    prefix: --show-progress
- id: in_n_threads
  doc: use specified number of threads
  type: long?
  inputBinding:
    prefix: --nthreads
- id: in_filter
  doc: "keep only reads that satisfy FILTER\n"
  type: string?
  inputBinding:
    prefix: --filter
- id: in_samba_mba_sort
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
- id: out_out
  doc: output file name; if not provided, the result is written to a file with .sorted.bam
    extension
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sambamba:0.8.0--h984e79f_0
cwlVersion: v1.1
baseCommand:
- sambamba
- sort
