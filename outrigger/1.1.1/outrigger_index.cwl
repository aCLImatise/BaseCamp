class: CommandLineTool
id: outrigger_index.cwl
inputs:
- id: output
  doc: Name of the folder where you saved the output from "outrigger index" (default
    is ./outrigger_output, which is relative to the directory where you called the
    program)". You will need this file for the next step, "outrigger psi"
  type: string
  inputBinding:
    prefix: --output
- id: j
  doc: '[SJ_OUT_TAB [SJ_OUT_TAB ...]], --sj-out-tab [SJ_OUT_TAB [SJ_OUT_TAB ...]]
    SJ.out.tab files from STAR aligner output. Not required if you specify "--compiled-junction-reads"'
  type: boolean
  inputBinding:
    prefix: -j
- id: junction_reads_csv
  doc: Name of the splice junction files to detect novel exons and build an index
    of alternative splicing events from. Not required if you specify SJ.out.tab file
    with '--sj-out-tab'
  type: string
  inputBinding:
    prefix: --junction-reads-csv
- id: b
  doc: '[BAM [BAM ...]], --bam [BAM [BAM ...]] Location of bam files to use for finding
    events.'
  type: boolean
  inputBinding:
    prefix: -b
- id: min_reads
  doc: Minimum number of reads per junction for that junction to count in creating
    the index of splicing events (default=10)
  type: long
  inputBinding:
    prefix: --min-reads
- id: ignore_multi_mapping
  doc: Applies to STAR SJ.out.tab files only. If this flag is used, then do not include
    reads that mapped to multiple locations in the genome, not uniquely to a locus,
    in the read count for a junction. If inputting "bam" files, then this means that
    reads with a mapping quality (MAPQ) of less than 255 are considered "multimapped."
    This is the same thing as what the STAR aligner does. By default, this is off,
    and all reads are used.
  type: boolean
  inputBinding:
    prefix: --ignore-multimapping
- id: max_de_novo_exon_length
  doc: Maximum length of an exon detected *de novo* from the dataset. This is to prevent
    multiple kilobase long exons from being accidentally created. (default=100)
  type: long
  inputBinding:
    prefix: --max-de-novo-exon-length
- id: gtf_filename
  doc: Name of the gtf file you want to use. If a gffutils feature database doesn't
    already exist at this location plus '.db' (e.g. if your gtf is gencode.v19.annotation.gtf,
    then the database is inferred to be gencode.v19.annotation.gtf.db), then a database
    will be auto-created. Not required if you provide a pre-built database with '--gffutils-db'
  type: string
  inputBinding:
    prefix: --gtf-filename
- id: gff_utils_db
  doc: Name of the gffutils database file you want to use. The exon IDs defined here
    will be used in the function when creating splicing event names. Not required
    if you provide a gtf file with '--gtf-filename'
  type: string
  inputBinding:
    prefix: --gffutils-db
- id: debug
  doc: 'If given, print debugging logging information to standard out (Warning: LOTS
    of output. Not recommended unless you think something is going wrong)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: n_jobs
  doc: Number of threads to use when parallelizing exon finding and file reading.
    Default is -1, which means to use as many threads as are available.
  type: string
  inputBinding:
    prefix: --n-jobs
- id: low_memory
  doc: If set, then use a smaller memory footprint. By default, this is off.
  type: boolean
  inputBinding:
    prefix: --low-memory
- id: splice_types
  doc: Which splice types to find. By default, "all" are used which at this point
    is skipped exon (SE) and mutually exclusive exon (MXE) events. Can also specify
    only one, e.g. "se" or both "se,mxe"
  type: string
  inputBinding:
    prefix: --splice-types
- id: force
  doc: If the 'outrigger index' command was interrupted, there will be intermediate
    files remaining. If you wish to restart outrigger and overwrite them all, use
    this flag. If you want to continue from where you left off, use the '--resume'
    flag. If neither is specified, the program exits and complains to the user.
  type: boolean
  inputBinding:
    prefix: --force
- id: resume
  doc: If the 'outrigger index' command was interrupted, there will be intermediate
    files remaining. If you want to continue from where you left off, use this flag.
    The default action is to do nothing and ask the user for input.
  type: boolean
  inputBinding:
    prefix: --resume
outputs: []
cwlVersion: v1.1
baseCommand:
- outrigger
- index
