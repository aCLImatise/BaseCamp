class: CommandLineTool
id: outrigger_index.cwl
inputs:
- id: in_output
  doc: "Name of the folder where you saved the output from\n\"outrigger index\" (default\
    \ is ./outrigger_output,\nwhich is relative to the directory where you called\n\
    the program)\". You will need this file for the next\nstep, \"outrigger psi\""
  type: File?
  inputBinding:
    prefix: --output
- id: in_sjouttab_files_star
  doc: "[SJ_OUT_TAB [SJ_OUT_TAB ...]], --sj-out-tab [SJ_OUT_TAB [SJ_OUT_TAB ...]]\n\
    SJ.out.tab files from STAR aligner output. Not\nrequired if you specify \"--compiled-junction-reads\""
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_junction_reads_csv
  doc: "Name of the splice junction files to detect novel\nexons and build an index\
    \ of alternative splicing\nevents from. Not required if you specify SJ.out.tab\n\
    file with '--sj-out-tab'"
  type: File?
  inputBinding:
    prefix: --junction-reads-csv
- id: in_location_bam_use
  doc: "[BAM [BAM ...]], --bam [BAM [BAM ...]]\nLocation of bam files to use for finding\
    \ events."
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_min_reads
  doc: "Minimum number of reads per junction for that junction\nto count in creating\
    \ the index of splicing events\n(default=10)"
  type: long?
  inputBinding:
    prefix: --min-reads
- id: in_ignore_multi_mapping
  doc: "Applies to STAR SJ.out.tab files only. If this flag is\nused, then do not\
    \ include reads that mapped to\nmultiple locations in the genome, not uniquely\
    \ to a\nlocus, in the read count for a junction. If inputting\n\"bam\" files,\
    \ then this means that reads with a mapping\nquality (MAPQ) of less than 255 are\
    \ considered\n\"multimapped.\" This is the same thing as what the STAR\naligner\
    \ does. By default, this is off, and all reads\nare used."
  type: boolean?
  inputBinding:
    prefix: --ignore-multimapping
- id: in_max_de_novo_exon_length
  doc: "Maximum length of an exon detected *de novo* from the\ndataset. This is to\
    \ prevent multiple kilobase long\nexons from being accidentally created. (default=100)"
  type: long?
  inputBinding:
    prefix: --max-de-novo-exon-length
- id: in_gtf_filename
  doc: "Name of the gtf file you want to use. If a gffutils\nfeature database doesn't\
    \ already exist at this\nlocation plus '.db' (e.g. if your gtf is\ngencode.v19.annotation.gtf,\
    \ then the database is\ninferred to be gencode.v19.annotation.gtf.db), then a\n\
    database will be auto-created. Not required if you\nprovide a pre-built database\
    \ with '--gffutils-db'"
  type: File?
  inputBinding:
    prefix: --gtf-filename
- id: in_gff_utils_db
  doc: "Name of the gffutils database file you want to use.\nThe exon IDs defined\
    \ here will be used in the function\nwhen creating splicing event names. Not required\
    \ if\nyou provide a gtf file with '--gtf-filename'"
  type: File?
  inputBinding:
    prefix: --gffutils-db
- id: in_debug
  doc: "If given, print debugging logging information to\nstandard out (Warning: LOTS\
    \ of output. Not recommended\nunless you think something is going wrong)"
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_n_jobs
  doc: "Number of threads to use when parallelizing exon\nfinding and file reading.\
    \ Default is -1, which means\nto use as many threads as are available."
  type: long?
  inputBinding:
    prefix: --n-jobs
- id: in_low_memory
  doc: "If set, then use a smaller memory footprint. By\ndefault, this is off."
  type: boolean?
  inputBinding:
    prefix: --low-memory
- id: in_splice_types
  doc: "Which splice types to find. By default, \"all\" are used\nwhich at this point\
    \ is skipped exon (SE) and mutually\nexclusive exon (MXE) events. Can also specify\
    \ only\none, e.g. \"se\" or both \"se,mxe\""
  type: string?
  inputBinding:
    prefix: --splice-types
- id: in_force
  doc: "If the 'outrigger index' command was interrupted,\nthere will be intermediate\
    \ files remaining. If you\nwish to restart outrigger and overwrite them all, use\n\
    this flag. If you want to continue from where you left\noff, use the '--resume'\
    \ flag. If neither is specified,\nthe program exits and complains to the user."
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_resume
  doc: "If the 'outrigger index' command was interrupted,\nthere will be intermediate\
    \ files remaining. If you\nwant to continue from where you left off, use this\n\
    flag. The default action is to do nothing and ask the\nuser for input.\n"
  type: boolean?
  inputBinding:
    prefix: --resume
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Name of the folder where you saved the output from\n\"outrigger index\" (default\
    \ is ./outrigger_output,\nwhich is relative to the directory where you called\n\
    the program)\". You will need this file for the next\nstep, \"outrigger psi\""
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_junction_reads_csv
  doc: "Name of the splice junction files to detect novel\nexons and build an index\
    \ of alternative splicing\nevents from. Not required if you specify SJ.out.tab\n\
    file with '--sj-out-tab'"
  type: File?
  outputBinding:
    glob: $(inputs.in_junction_reads_csv)
hints: []
cwlVersion: v1.1
baseCommand:
- outrigger
- index
