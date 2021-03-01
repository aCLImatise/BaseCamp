class: CommandLineTool
id: taxon_filter.py_partition_bmtagger.cwl
inputs:
- id: in_out_match
  doc: "OUTMATCH\nFilenames for fastq output of matching reads."
  type: string?
  inputBinding:
    prefix: --outMatch
- id: in_out_no_match
  doc: "OUTNOMATCH\nFilenames for fastq output of unmatched reads."
  type: string?
  inputBinding:
    prefix: --outNoMatch
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
- id: in_in_fast_q_one
  doc: Input fastq file; 1st end of paired-end reads.
  type: long
  inputBinding:
    position: 0
- id: in_in_fast_q_two
  doc: "Input fastq file; 2nd end of paired-end reads. Must\nhave same names as inFastq1"
  type: long
  inputBinding:
    position: 1
- id: in_ref_dbs
  doc: "Reference databases (one or more) to deplete from\ninput. For each db, requires\
    \ prior creation of\ndb.bitmask by bmtool, and db.srprism.idx,\ndb.srprism.map,\
    \ etc. by srprism mkindex."
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
- partition_bmtagger
