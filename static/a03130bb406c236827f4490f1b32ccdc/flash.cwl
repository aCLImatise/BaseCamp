class: CommandLineTool
id: flash.cwl
inputs:
- id: in_interleaved_input
  doc: ) or tab-delimited (see the --tab-delimited-input
  type: string
  inputBinding:
    prefix: --interleaved-input
- id: in_phred_offset
  doc: "The smallest ASCII value of the characters used to\nrepresent quality values\
    \ of bases in FASTQ files.\nIt should be set to either 33, which corresponds\n\
    to the later Illumina platforms and Sanger\nplatforms, or 64, which corresponds\
    \ to the\nearlier Illumina platforms.  Default: 33."
  type: long
  inputBinding:
    prefix: --phred-offset
- id: in_min_overlap
  doc: "The minimum required overlap length between two\nreads to provide a confident\
    \ overlap.  Default:\n10bp."
  type: long
  inputBinding:
    prefix: --min-overlap
- id: in_max_overlap
  doc: "Maximum overlap length expected in approximately\n90% of read pairs.  It is\
    \ by default set to 65bp,\nwhich works well for 100bp reads generated from a\n\
    180bp library, assuming a normal distribution of\nfragment lengths.  Overlaps\
    \ longer than the maximum\noverlap parameter are still considered as good\noverlaps,\
    \ but the mismatch density (explained below)\nis calculated over the first max_overlap\
    \ bases in\nthe overlapped region rather than the entire\noverlap.  Default: 65bp,\
    \ or calculated from the\nspecified read length, fragment length, and fragment\n\
    length standard deviation."
  type: long
  inputBinding:
    prefix: --max-overlap
- id: in_max_mismatch_density
  doc: "Maximum allowed ratio between the number of\nmismatched base pairs and the\
    \ overlap length.\nTwo reads will not be combined with a given overlap\nif that\
    \ overlap results in a mismatched base density\nhigher than this value.  Note:\
    \ Any occurence of an\n'N' in either read is ignored and not counted\ntowards\
    \ the mismatches or overlap length.  Our\nexperimental results suggest that higher\
    \ values of\nthe maximum mismatch density yield larger\nnumbers of correctly merged\
    \ read pairs but at\nthe expense of higher numbers of incorrectly\nmerged read\
    \ pairs.  Default: 0.25."
  type: long
  inputBinding:
    prefix: --max-mismatch-density
- id: in_allow_out_ies
  doc: "Also try combining read pairs in the \"outie\"\norientation, e.g.\nRead 1:\
    \ <-----------\nRead 2:       ------------>\nas opposed to only the \"innie\"\
    \ orientation, e.g.\nRead 1:       <------------\nRead 2: ----------->\nFLASH\
    \ uses the same parameters when trying each\norientation.  If a read pair can\
    \ be combined in\nboth \"innie\" and \"outie\" orientations, the\nbetter-fitting\
    \ one will be chosen using the same\nscoring algorithm that FLASH normally uses.\n\
    This option also causes extra .innie and .outie\nhistogram files to be produced."
  type: boolean
  inputBinding:
    prefix: --allow-outies
- id: in_read_len
  doc: "-f, --fragment-len=LEN\n-s, --fragment-len-stddev=LEN\nAverage read length,\
    \ fragment length, and fragment\nstandard deviation.  These are convenience parameters\n\
    only, as they are only used for calculating the\nmaximum overlap (--max-overlap)\
    \ parameter.\nThe maximum overlap is calculated as the overlap of\naverage-length\
    \ reads from an average-size fragment\nplus 2.5 times the fragment length standard\n\
    deviation.  The default values are -r 100, -f 180,\nand -s 18, so this works out\
    \ to a maximum overlap of\n65 bp.  If --max-overlap is specified, then the\nspecified\
    \ value overrides the calculated value.\nIf you do not know the standard deviation\
    \ of the\nfragment library, you can probably assume that the\nstandard deviation\
    \ is 10% of the average fragment\nlength.\n--cap-mismatch-quals    Cap quality\
    \ scores assigned at mismatch locations\nto 2.  This was the default behavior\
    \ in FLASH v1.2.7\nand earlier.  Later versions will instead calculate\nsuch scores\
    \ as max(|q1 - q2|, 2); that is, the\nabsolute value of the difference in quality\
    \ scores,\nbut at least 2.  Essentially, the new behavior\nprevents a low quality\
    \ base call that is likely a\nsequencing error from significantly bringing down\n\
    the quality of a high quality, likely correct base\ncall.\n--interleaved-input\
    \     Instead of requiring files MATES_1.FASTQ and\nMATES_2.FASTQ, allow a single\
    \ file MATES.FASTQ that\nhas the paired-end reads interleaved.  Specify \"-\"\n\
    to read from standard input.\n--interleaved-output    Write the uncombined pairs\
    \ in interleaved FASTQ\nformat.\n-I, --interleaved       Equivalent to specifying\
    \ both --interleaved-input\nand --interleaved-output.\n-Ti, --tab-delimited-input\n\
    Assume the input is in tab-delimited format\nrather than FASTQ, in the format\
    \ described below in\n'--tab-delimited-output'.  In this mode you should\nprovide\
    \ a single input file, each line of which must\ncontain either a read pair (5\
    \ fields) or a single\nread (3 fields).  FLASH will try to combine the read\n\
    pairs.  Single reads will be written to the output\nfile as-is if also using --tab-delimited-output;\n\
    otherwise they will be ignored.  Note that you may\nspecify \"-\" as the input\
    \ file to read the\ntab-delimited data from standard input.\n-To, --tab-delimited-output\n\
    Write output in tab-delimited format (not FASTQ).\nEach line will contain either\
    \ a combined pair in the\nformat 'tag <tab> seq <tab> qual' or an uncombined\n\
    pair in the format 'tag <tab> seq_1 <tab> qual_1\n<tab> seq_2 <tab> qual_2'.\n\
    -o, --output-prefix=PREFIX\nPrefix of output files.  Default: \"out\".\n-d, --output-directory=DIR\n\
    Path to directory for output files.  Default:\ncurrent working directory.\n-c,\
    \ --to-stdout         Write the combined reads to standard output.  In\nthis mode,\
    \ with FASTQ output (the default) the\nuncombined reads are discarded.  With tab-delimited\n\
    output, uncombined reads are included in the\ntab-delimited data written to standard\
    \ output.\nIn both cases, histogram files are not written,\nand informational\
    \ messages are sent to standard\nerror rather than to standard output.\n-z, --compress\
    \          Compress the output files directly with zlib,\nusing the gzip container\
    \ format.  Similar to\nspecifying --compress-prog=gzip and --suffix=gz,\nbut may\
    \ be slightly faster.\n--compress-prog=PROG    Pipe the output through the compression\
    \ program\nPROG, which will be called as `PROG -c -',\nplus any arguments specified\
    \ by --compress-prog-args.\nPROG must read uncompressed data from standard input\n\
    and write compressed data to standard output when\ninvoked as noted above.\nExamples:\
    \ gzip, bzip2, xz, pigz.\n--compress-prog-args=ARGS\nA string of additional arguments\
    \ that will be passed\nto the compression program if one is specified with\n--compress-prog=PROG.\
    \  (The arguments '-c -' are\nstill passed in addition to explicitly specified\n\
    arguments.)\n--suffix=SUFFIX, --output-suffix=SUFFIX\nUse SUFFIX as the suffix\
    \ of the output files\nafter \".fastq\".  A dot before the suffix is assumed,\n\
    unless an empty suffix is provided.  Default:\nnothing; or 'gz' if -z is specified;\
    \ or PROG if\n--compress-prog=PROG is specified.\n-t, --threads=NTHREADS  Set\
    \ the number of worker threads.  This is in\naddition to the I/O threads.  Default:\
    \ number of\nprocessors.  Note: if you need FLASH's output to\nappear deterministically\
    \ or in the same order as\nthe original reads, you must specify -t 1\n(--threads=1).\n\
    -q, --quiet             Do not print informational messages.\n-h, --help     \
    \         Display this help and exit.\n-v, --version           Display version.\n"
  type: long
  inputBinding:
    prefix: --read-len
- id: in_data_dot
  doc: "----------------------------------------------------------------------------\n\
    MANDATORY INPUT"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- flash
