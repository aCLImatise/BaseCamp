class: CommandLineTool
id: run_midas.py_species.cwl
inputs:
- id: in_fastafastq_file_containing_st_mate
  doc: "FASTA/FASTQ file containing 1st mate if using paired-end reads.\nOtherwise\
    \ FASTA/FASTQ containing unpaired reads.\nCan be gzip'ed (extension: .gz) or bzip2'ed\
    \ (extension: .bz2)"
  type: long?
  inputBinding:
    prefix: '-1'
- id: in_fastafastq_file_containing_nd_mate
  doc: "FASTA/FASTQ file containing 2nd mate if using paired-end reads.\nCan be gzip'ed\
    \ (extension: .gz) or bzip2'ed (extension: .bz2)"
  type: long?
  inputBinding:
    prefix: '-2'
- id: in_number_reads_use
  doc: Number of reads to use from input file(s) (use all)
  type: long?
  inputBinding:
    prefix: -n
- id: in_number_threads_use
  doc: Number of threads to use for database search (1)
  type: long?
  inputBinding:
    prefix: -t
- id: in_path_reference_databaseby
  doc: "Path to reference database\nBy default, the MIDAS_DB environmental variable\
    \ is used"
  type: File?
  inputBinding:
    prefix: -d
- id: in_remove_temp
  doc: "Remove intermediate files generated by MIDAS (False).\nUseful to reduce disk\
    \ space of MIDAS output"
  type: boolean?
  inputBinding:
    prefix: --remove_temp
- id: in_word_size
  doc: "Word size for BLAST search (28)\nUse word sizes > 16 for greatest efficiency."
  type: long?
  inputBinding:
    prefix: --word_size
- id: in_map_id
  doc: "Discard reads with alignment identity < MAPID\nBy default gene-specific species-level\
    \ cutoffs are used\nValues between 0-100 accepted"
  type: double?
  inputBinding:
    prefix: --mapid
- id: in_aln_cov
  doc: "Discard reads with alignment coverage < ALN_COV (0.75)\nValues between 0-1\
    \ accepted"
  type: double?
  inputBinding:
    prefix: --aln_cov
- id: in_read_length
  doc: "Trim reads to READ_LENGTH and discard reads with length < READ_LENGTH\nBy\
    \ default, reads are not trimmed or filtered"
  type: long?
  inputBinding:
    prefix: --read_length
- id: in_outdir
  doc: "Path to directory to store results.\nDirectory name should correspond to sample\
    \ identifier"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- run_midas.py
- species
