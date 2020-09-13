class: CommandLineTool
id: ../../../tadbit_segment.cwl
inputs:
- id: in_workdir
  doc: path to working directory (generated with the tool tadbit mapper)
  type: File
  inputBinding:
    prefix: --workdir
- id: in_tmp_db
  doc: if provided uses this directory to manipulate the database
  type: File
  inputBinding:
    prefix: --tmpdb
- id: in_no_sql
  doc: do not load/store data from/in sqlite database
  type: boolean
  inputBinding:
    prefix: --nosql
- id: in_all_bins
  doc: skip the filtering of bins for detection of TADs
  type: boolean
  inputBinding:
    prefix: --all_bins
- id: in_m_reads
  doc: path valid-pairs file (TADbit BAM format)
  type: File
  inputBinding:
    prefix: --mreads
- id: in_biases
  doc: path to file with precalculated biases by columns
  type: File
  inputBinding:
    prefix: --biases
- id: in_resolution
  doc: resolution at which to output matrices
  type: long
  inputBinding:
    prefix: --resolution
- id: in_norm_matrix
  doc: path to a matrix file with normalized read counts
  type: File
  inputBinding:
    prefix: --norm_matrix
- id: in_raw_matrix
  doc: path to a matrix file with raw read counts
  type: File
  inputBinding:
    prefix: --raw_matrix
- id: in_filter
  doc: "[[1, 2, 3, 4, 6, 7, 9, 10]] Use filters to define a set os valid\npair of\
    \ reads e.g.: '--apply 1 2 3 4 8 9 10'. Where these\nnumberscorrespond to: 1:\
    \ self-circle, 2: dangling-end, 3: error, 4:\nextra dangling-end, 5: too close\
    \ from RES, 6: too short, 7: too\nlarge, 8: over-represented, 9: duplicated, 10:\
    \ random breaks, 11:\ntrans-chromosomic"
  type: long[]
  inputBinding:
    prefix: --filter
- id: in_nox
  doc: no display server (X screen)
  type: boolean
  inputBinding:
    prefix: --noX
- id: in_only_compartments
  doc: search A/B compartments using first eigen vector of the correlation
  type: boolean
  inputBinding:
    prefix: --only_compartments
- id: in_verbose
  doc: print more messages
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_jobid
  doc: "Use as input data generated by a job with a given jobid. Use tadbit\ndescribe\
    \ to find out which."
  type: long
  inputBinding:
    prefix: --jobid
- id: in_chromosomes
  doc: Name of the chromosomes on which to search for TADs or compartments.
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: in_cpu
  doc: "[8] Maximum number of CPU cores available in the execution host. If\nhigher\
    \ than 1, tasks with multi-threading capabilities will enabled\n(if 0 all available)\
    \ cores will be used"
  type: long
  inputBinding:
    prefix: --cpu
- id: in_force
  doc: overwrite previously run job
  type: boolean
  inputBinding:
    prefix: --force
- id: in_rich_in_a
  doc: "path to a BED or bedGraph file with list of protein coding gene or\nother\
    \ active epigenetic mark, to be used to label compartments\ninstead of using the\
    \ relative interaction count."
  type: File
  inputBinding:
    prefix: --rich_in_A
- id: in_fast_a
  doc: "Path to fasta file with genome sequence, to compute GC content and\nuse it\
    \ to label compartments"
  type: File
  inputBinding:
    prefix: --fasta
- id: in_save_corr
  doc: Save correlation matrix used to predict compartments.
  type: boolean
  inputBinding:
    prefix: --savecorr
- id: in_fix_corr_scale
  doc: "Correlation matrix plot scaled between correlation 1 and -1 instead\nof maximum\
    \ observed values."
  type: boolean
  inputBinding:
    prefix: --fix_corr_scale
- id: in_format
  doc: '[png] file format for figures'
  type: File
  inputBinding:
    prefix: --format
- id: in_n_evs
  doc: "[3] Number of eigenvectors to store. if \"-1\" all eigenvectors will\nbe calculated"
  type: long
  inputBinding:
    prefix: --n_evs
- id: in_ev_index
  doc: "list of indexes of eigenvectors capturing compartments signal (one\nindex\
    \ per chromosome, in the same order as chromosomes in fasta\nfile). Example picking\
    \ the first eigenvector for all chromosomes but\nfor chromosome 3: '--ev_index\
    \ 1 1 2 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1\n1 1 1 1"
  type: long[]
  inputBinding:
    prefix: --ev_index
- id: in_max_tad_size
  doc: "an integer defining the maximum size of TAD. Default defines it as\nthe number\
    \ of rows/columns\n"
  type: long
  inputBinding:
    prefix: --max_tad_size
- id: in_matrix
  doc: --only_tads              search TAD boundaries break-point detection algorithm
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tadbit
- segment
