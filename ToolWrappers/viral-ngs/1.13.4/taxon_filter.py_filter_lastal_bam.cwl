class: CommandLineTool
id: taxon_filter.py_filter_lastal_bam.cwl
inputs:
- id: in_maximum_gapless_alignments
  doc: "maximum gapless alignments per query position\n(default: 1)"
  type: long?
  inputBinding:
    prefix: -n
- id: in_minimum_length_initial
  doc: 'minimum length for initial matches (default: 5)'
  type: long?
  inputBinding:
    prefix: -l
- id: in_maximum_length_initial
  doc: 'maximum length for initial matches (default: 50)'
  type: long?
  inputBinding:
    prefix: -L
- id: in_maximum_initial_matches
  doc: "maximum initial matches per query position (default:\n100)"
  type: long?
  inputBinding:
    prefix: -m
- id: in_jvm_memory
  doc: 'JVM virtual memory size (default: 4g)'
  type: long?
  inputBinding:
    prefix: --JVMmemory
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
- id: in_in_bam
  doc: Input reads
  type: string
  inputBinding:
    position: 0
- id: in_db
  doc: Database of taxa we keep
  type: string
  inputBinding:
    position: 1
- id: in_out_bam
  doc: Output reads, filtered to refDb
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
- filter_lastal_bam
