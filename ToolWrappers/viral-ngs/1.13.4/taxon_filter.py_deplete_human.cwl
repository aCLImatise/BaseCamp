class: CommandLineTool
id: taxon_filter.py_deplete_human.cwl
inputs:
- id: in_tax_filt_bam
  doc: "Output BAM: blastnBam run through taxonomic selection\nvia LASTAL."
  type: string?
  inputBinding:
    prefix: --taxfiltBam
- id: in_bm_tagger_dbs
  doc: "Reference databases (one or more) to deplete from\ninput. For each db, requires\
    \ prior creation of\ndb.bitmask by bmtool, and db.srprism.idx,\ndb.srprism.map,\
    \ etc. by srprism mkindex."
  type: string[]
  inputBinding:
    prefix: --bmtaggerDbs
- id: in_blast_dbs
  doc: "One or more reference databases for blast to deplete\nfrom input."
  type: string[]
  inputBinding:
    prefix: --blastDbs
- id: in_last_db
  doc: One reference database for last (required if
  type: string?
  inputBinding:
    prefix: --lastDb
- id: in_threads
  doc: The number of threads to use in running blastn.
  type: long?
  inputBinding:
    prefix: --threads
- id: in_jvm_memory
  doc: "JVM virtual memory size for Picard FilterSamReads\n(default: 4g)"
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
  doc: Input BAM file.
  type: string
  inputBinding:
    position: 0
- id: in_revert_bam
  doc: 'Output BAM: read markup reverted with Picard.'
  type: string
  inputBinding:
    position: 1
- id: in_bm_tagger_bam
  doc: 'Output BAM: depleted of human reads with BMTagger.'
  type: string
  inputBinding:
    position: 2
- id: in_rmd_up_bam
  doc: 'Output BAM: bmtaggerBam run through M-Vicuna duplicate'
  type: string
  inputBinding:
    position: 3
- id: in_removal_dot
  doc: 'blastnBam             Output BAM: rmdupBam run through another depletion of'
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- taxon_filter.py
- deplete_human
