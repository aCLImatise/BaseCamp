class: CommandLineTool
id: taxon_filter.py_deplete_blastn.cwl
inputs:
- id: in_threads
  doc: The number of threads to use in running blastn.
  type: long?
  inputBinding:
    prefix: --threads
- id: in_loglevel
  doc: 'Verboseness of output. [default: DEBUG]'
  type: string?
  inputBinding:
    prefix: --loglevel
- id: in_tmp_dir
  doc: 'Base directory for temp files. [default: /tmp]'
  type: Directory?
  inputBinding:
    prefix: --tmp_dir
- id: in_tmp_dir_keep
  doc: "Keep the tmp_dir if an exception occurs while running.\nDefault is to delete\
    \ all temp files at the end, even\nif there's a failure.\n"
  type: boolean?
  inputBinding:
    prefix: --tmp_dirKeep
- id: in_in_fast_q
  doc: Input fastq file.
  type: string
  inputBinding:
    position: 0
- id: in_out_fast_q
  doc: Output fastq file with matching reads removed.
  type: string
  inputBinding:
    position: 1
- id: in_ref_dbs
  doc: One or more reference databases for blast.
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- taxon_filter.py
- deplete_blastn
