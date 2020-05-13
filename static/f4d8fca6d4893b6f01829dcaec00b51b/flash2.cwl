class: CommandLineTool
id: flash2.cwl
inputs:
- id: out
  doc: .extendedFrags.fastq      The merged reads.
  type: boolean
  inputBinding:
    prefix: '- out'
- id: out
  doc: .notCombined_1.fastq      Read 1 of mate pairs that were not merged.
  type: boolean
  inputBinding:
    prefix: '- out'
- id: out
  doc: .notCombined_2.fastq      Read 2 of mate pairs that were not merged.
  type: boolean
  inputBinding:
    prefix: '- out'
- id: out
  doc: .hist                     Numeric histogram of merged read lengths.
  type: boolean
  inputBinding:
    prefix: '- out'
- id: out
  doc: .histogram                Visual histogram of merged read lengths.
  type: boolean
  inputBinding:
    prefix: '- out'
- id: fragment_len_stddev
  doc: Average read length, fragment length, and fragment standard deviation.  These
    are convenience parameters only, as they are only used for calculating the maximum
    overlap (--max-overlap) parameter. The maximum overlap is calculated as the overlap
    of average-length reads from an average-size fragment plus 2.5 times the fragment
    length standard deviation.  The default values are -r 100, -f 180, and -s 18,
    so this works out to a maximum overlap of 65 bp.  If --max-overlap is specified,
    then the specified value overrides the calculated value. If you do not know the
    standard deviation of the fragment library, you can probably assume that the standard
    deviation is 10% of the average fragment length.
  type: string
  inputBinding:
    prefix: --fragment-len-stddev
- id: cap_mismatch_quals
  doc: Cap quality scores assigned at mismatch locations to 2.  This was the default
    behavior in FLASH v1.2.7 and earlier.  Later versions will instead calculate such
    scores as max(|q1 - q2|, 2); that is, the absolute value of the difference in
    quality scores, but at least 2.  Essentially, the new behavior prevents a low
    quality base call that is likely a sequencing error from significantly bringing
    down the quality of a high quality, likely correct base call.
  type: boolean
  inputBinding:
    prefix: --cap-mismatch-quals
- id: interleaved_input
  doc: Instead of requiring files MATES_1.FASTQ and MATES_2.FASTQ, allow a single
    file MATES.FASTQ that has the paired-end reads interleaved.  Specify "-" to read
    from standard input.
  type: boolean
  inputBinding:
    prefix: --interleaved-input
- id: interleaved_output
  doc: Write the uncombined pairs in interleaved FASTQ format.
  type: boolean
  inputBinding:
    prefix: --interleaved-output
- id: interleaved
  doc: Equivalent to specifying both --interleaved-input and --interleaved-output.
  type: boolean
  inputBinding:
    prefix: --interleaved
- id: tab_delimited_input
  doc: Assume the input is in tab-delimited format rather than FASTQ, in the format
    described below in '--tab-delimited-output'.  In this mode you should provide
    a single input file, each line of which must contain either a read pair (5 fields)
    or a single read (3 fields).  FLASH will try to combine the read pairs.  Single
    reads will be written to the output file as-is if also using --tab-delimited-output;
    otherwise they will be ignored.  Note that you may specify "-" as the input file
    to read the tab-delimited data from standard input.
  type: boolean
  inputBinding:
    prefix: --tab-delimited-input
- id: tab_delimited_output
  doc: Write output in tab-delimited format (not FASTQ). Each line will contain either
    a combined pair in the format 'tag <tab> seq <tab> qual' or an uncombined pair
    in the format 'tag <tab> seq_1 <tab> qual_1 <tab> seq_2 <tab> qual_2'.
  type: boolean
  inputBinding:
    prefix: --tab-delimited-output
- id: output_prefix
  doc: 'Prefix of output files.  Default: "out".'
  type: string
  inputBinding:
    prefix: --output-prefix
- id: output_directory
  doc: 'Path to directory for output files.  Default: current working directory.'
  type: string
  inputBinding:
    prefix: --output-directory
- id: to_stdout
  doc: Write the combined reads to standard output.  In this mode, with FASTQ output
    (the default) the uncombined reads are discarded.  With tab-delimited output,
    uncombined reads are included in the tab-delimited data written to standard output.
    In both cases, histogram files are not written, and informational messages are
    sent to standard error rather than to standard output.
  type: boolean
  inputBinding:
    prefix: --to-stdout
- id: compress
  doc: Compress the output files directly with zlib, using the gzip container format.  Similar
    to specifying --compress-prog=gzip and --suffix=gz, but may be slightly faster.
  type: boolean
  inputBinding:
    prefix: --compress
- id: compress_prog
  doc: "Pipe the output through the compression program PROG, which will be called\
    \ as `PROG -c -', plus any arguments specified by --compress-prog-args. PROG must\
    \ read uncompressed data from standard input and write compressed data to standard\
    \ output when invoked as noted above. Examples: gzip, bzip2, xz, pigz."
  type: string
  inputBinding:
    prefix: --compress-prog
- id: compress_prog_args
  doc: A string of additional arguments that will be passed to the compression program
    if one is specified with --compress-prog=PROG.  (The arguments '-c -' are still
    passed in addition to explicitly specified arguments.)
  type: string
  inputBinding:
    prefix: --compress-prog-args
- id: output_suffix
  doc: "Use SUFFIX as the suffix of the output files after \".fastq\".  A dot before\
    \ the suffix is assumed, unless an empty suffix is provided.  Default: nothing;\
    \ or 'gz' if -z is specified; or PROG if --compress-prog=PROG is specified."
  type: string
  inputBinding:
    prefix: --output-suffix
- id: threads
  doc: "Set the number of worker threads.  This is in addition to the I/O threads.\
    \  Default: number of processors.  Note: if you need FLASH's output to appear\
    \ deterministically or in the same order as the original reads, you must specify\
    \ -t 1 (--threads=1)."
  type: string
  inputBinding:
    prefix: --threads
- id: quiet
  doc: Do not print informational messages.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- flash2
