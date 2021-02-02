class: CommandLineTool
id: assembly.py_trim_rmdup_subsamp.cwl
inputs:
- id: in_n_reads
  doc: "Subsample reads to no more than this many individual\nreads. Note that paired\
    \ reads are given priority, and\nunpaired reads are included to reach the count\
    \ if\nthere are too few paired reads to reach n_reads.\n(default 100000)"
  type: long
  inputBinding:
    prefix: --n_reads
- id: in_loglevel
  doc: 'Verboseness of output. [default: DEBUG]'
  type: string
  inputBinding:
    prefix: --loglevel
- id: in_tmp_dir
  doc: 'Base directory for temp files. [default: /tmp]'
  type: Directory
  inputBinding:
    prefix: --tmp_dir
- id: in_tmp_dir_keep
  doc: "Keep the tmp_dir if an exception occurs while running.\nDefault is to delete\
    \ all temp files at the end, even\nif there's a failure.\n"
  type: boolean
  inputBinding:
    prefix: --tmp_dirKeep
- id: in_in_bam
  doc: Input reads, unaligned BAM format.
  type: string
  inputBinding:
    position: 0
- id: in_clip_db
  doc: Trimmomatic clip DB.
  type: string
  inputBinding:
    position: 1
- id: in_out_bam
  doc: "Output reads, unaligned BAM format (currently, read\ngroups and other header\
    \ information are destroyed in\nthis process)."
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- assembly.py
- trim_rmdup_subsamp
