class: CommandLineTool
id: outrigger_psi.cwl
inputs:
- id: in_index
  doc: "Name of the folder where you saved the output from\n\"outrigger index\" (default\
    \ is\n./outrigger_output/index, which is relative to the\ndirectory where you\
    \ called this program, assuming you\nhave called \"outrigger psi\" in the same\
    \ folder as you\ncalled \"outrigger index\")"
  type: Directory?
  inputBinding:
    prefix: --index
- id: in_output
  doc: "Name of the folder where you saved the output from\n\"outrigger index\" (default\
    \ is ./outrigger_output,\nwhich is relative to the directory where you called\n\
    the program). Cannot specify both an --index and\n--output with \"psi\""
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_junction_reads_csv
  doc: "Name of the compiled splice junction file to calculate\npsi scores on. Default\
    \ is the '--output' folder's\njunctions/reads.csv file. Not required if you specify\n\
    SJ.out.tab files with '--sj-out-tab'"
  type: File?
  inputBinding:
    prefix: --junction-reads-csv
- id: in_sjouttab_files_star
  doc: "[SJ_OUT_TAB [SJ_OUT_TAB ...]], --sj-out-tab [SJ_OUT_TAB [SJ_OUT_TAB ...]]\n\
    SJ.out.tab files from STAR aligner output. Not\nrequired if you specify a file\
    \ with \"--compiled-\njunction-reads\""
  type: File?
  inputBinding:
    prefix: -j
- id: in_bam_files_use
  doc: "[BAM [BAM ...]], --bam [BAM [BAM ...]]\nBam files to use to calculate psi\
    \ on"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_min_reads
  doc: "Minimum number of reads per junction for calculating\nPsi (default=10)"
  type: long?
  inputBinding:
    prefix: --min-reads
- id: in_method
  doc: "How to deal with multiple junctions on an event - take\nthe mean (default)\
    \ or the min? (the other option)"
  type: long?
  inputBinding:
    prefix: --method
- id: in_uneven_coverage_multiplier
  doc: "If a junction one one side of an exon is bigger than\nthe other side of the\
    \ exon by this amount, (default is\n10, so 10x bigger), then do not use this event"
  type: long?
  inputBinding:
    prefix: --uneven-coverage-multiplier
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
- id: in_reads_col
  doc: "Name of column in --splice-junction-csv containing\nreads to use. (default='reads')"
  type: string?
  inputBinding:
    prefix: --reads-col
- id: in_sample_id_col
  doc: "Name of column in --splice-junction-csv containing\nsample ids to use. (default='sample_id')"
  type: string?
  inputBinding:
    prefix: --sample-id-col
- id: in_junction_id_col
  doc: "Name of column in --splice-junction-csv containing the\nID of the junction\
    \ to use. Must match exactly with the\njunctions in the index.(default='junction_id')"
  type: string?
  inputBinding:
    prefix: --junction-id-col
- id: in_debug
  doc: "If given, print debugging logging information to\nstandard out"
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_n_jobs
  doc: "Number of threads to use when parallelizing psi\ncalculation and file reading.\
    \ Default is -1, which\nmeans to use as many threads as are available."
  type: long?
  inputBinding:
    prefix: --n-jobs
- id: in_low_memory
  doc: "If set, then use a smaller memory footprint. By\ndefault, this is off.\n"
  type: boolean?
  inputBinding:
    prefix: --low-memory
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_index
  doc: "Name of the folder where you saved the output from\n\"outrigger index\" (default\
    \ is\n./outrigger_output/index, which is relative to the\ndirectory where you\
    \ called this program, assuming you\nhave called \"outrigger psi\" in the same\
    \ folder as you\ncalled \"outrigger index\")"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_index)
- id: out_output
  doc: "Name of the folder where you saved the output from\n\"outrigger index\" (default\
    \ is ./outrigger_output,\nwhich is relative to the directory where you called\n\
    the program). Cannot specify both an --index and\n--output with \"psi\""
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_junction_reads_csv
  doc: "Name of the compiled splice junction file to calculate\npsi scores on. Default\
    \ is the '--output' folder's\njunctions/reads.csv file. Not required if you specify\n\
    SJ.out.tab files with '--sj-out-tab'"
  type: File?
  outputBinding:
    glob: $(inputs.in_junction_reads_csv)
- id: out_sjouttab_files_star
  doc: "[SJ_OUT_TAB [SJ_OUT_TAB ...]], --sj-out-tab [SJ_OUT_TAB [SJ_OUT_TAB ...]]\n\
    SJ.out.tab files from STAR aligner output. Not\nrequired if you specify a file\
    \ with \"--compiled-\njunction-reads\""
  type: File?
  outputBinding:
    glob: $(inputs.in_sjouttab_files_star)
hints: []
cwlVersion: v1.1
baseCommand:
- outrigger
- psi
