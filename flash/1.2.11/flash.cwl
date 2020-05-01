#!/usr/bin/env cwl-runner

baseCommand:
- flash
class: CommandLineTool
cwlVersion: v1.0
id: flash
inputs:
- doc: .extendedFrags.fastq      The merged reads.
  id: out
  inputBinding:
    prefix: '- out'
  type: boolean
- doc: .notCombined_1.fastq      Read 1 of mate pairs that were not merged.
  id: out
  inputBinding:
    prefix: '- out'
  type: boolean
- doc: .notCombined_2.fastq      Read 2 of mate pairs that were not merged.
  id: out
  inputBinding:
    prefix: '- out'
  type: boolean
- doc: .hist                     Numeric histogram of merged read lengths.
  id: out
  inputBinding:
    prefix: '- out'
  type: boolean
- doc: .histogram                Visual histogram of merged read lengths.
  id: out
  inputBinding:
    prefix: '- out'
  type: boolean
- doc: Average read length, fragment length, and fragment standard deviation.  These
    are convenience parameters only, as they are only used for calculating the maximum
    overlap (--max-overlap) parameter. The maximum overlap is calculated as the overlap
    of average-length reads from an average-size fragment plus 2.5 times the fragment
    length standard deviation.  The default values are -r 100, -f 180, and -s 18,
    so this works out to a maximum overlap of 65 bp.  If --max-overlap is specified,
    then the specified value overrides the calculated value. If you do not know the
    standard deviation of the fragment library, you can probably assume that the standard
    deviation is 10% of the average fragment length.
  id: fragment_len_stddev
  inputBinding:
    prefix: --fragment-len-stddev
  type: string
- doc: Cap quality scores assigned at mismatch locations to 2.  This was the default
    behavior in FLASH v1.2.7 and earlier.  Later versions will instead calculate such
    scores as max(|q1 - q2|, 2); that is, the absolute value of the difference in
    quality scores, but at least 2.  Essentially, the new behavior prevents a low
    quality base call that is likely a sequencing error from significantly bringing
    down the quality of a high quality, likely correct base call.
  id: cap_mismatch_quals
  inputBinding:
    prefix: --cap-mismatch-quals
  type: boolean
- doc: Instead of requiring files MATES_1.FASTQ and MATES_2.FASTQ, allow a single
    file MATES.FASTQ that has the paired-end reads interleaved.  Specify "-" to read
    from standard input.
  id: interleaved_input
  inputBinding:
    prefix: --interleaved-input
  type: boolean
- doc: Write the uncombined pairs in interleaved FASTQ format.
  id: interleaved_output
  inputBinding:
    prefix: --interleaved-output
  type: boolean
- doc: Equivalent to specifying both --interleaved-input and --interleaved-output.
  id: interleaved
  inputBinding:
    prefix: --interleaved
  type: boolean
- doc: Assume the input is in tab-delimited format rather than FASTQ, in the format
    described below in '--tab-delimited-output'.  In this mode you should provide
    a single input file, each line of which must contain either a read pair (5 fields)
    or a single read (3 fields).  FLASH will try to combine the read pairs.  Single
    reads will be written to the output file as-is if also using --tab-delimited-output;
    otherwise they will be ignored.  Note that you may specify "-" as the input file
    to read the tab-delimited data from standard input.
  id: tab_delimited_input
  inputBinding:
    prefix: --tab-delimited-input
  type: boolean
- doc: Write output in tab-delimited format (not FASTQ). Each line will contain either
    a combined pair in the format 'tag <tab> seq <tab> qual' or an uncombined pair
    in the format 'tag <tab> seq_1 <tab> qual_1 <tab> seq_2 <tab> qual_2'.
  id: tab_delimited_output
  inputBinding:
    prefix: --tab-delimited-output
  type: boolean
- doc: 'Prefix of output files.  Default: "out".'
  id: output_prefix
  inputBinding:
    prefix: --output-prefix
  type: string
- doc: 'Path to directory for output files.  Default: current working directory.'
  id: output_directory
  inputBinding:
    prefix: --output-directory
  type: string
- doc: Write the combined reads to standard output.  In this mode, with FASTQ output
    (the default) the uncombined reads are discarded.  With tab-delimited output,
    uncombined reads are included in the tab-delimited data written to standard output.
    In both cases, histogram files are not written, and informational messages are
    sent to standard error rather than to standard output.
  id: to_stdout
  inputBinding:
    prefix: --to-stdout
  type: boolean
- doc: Compress the output files directly with zlib, using the gzip container format.  Similar
    to specifying --compress-prog=gzip and --suffix=gz, but may be slightly faster.
  id: compress
  inputBinding:
    prefix: --compress
  type: boolean
- doc: "Pipe the output through the compression program PROG, which will be called\
    \ as `PROG -c -', plus any arguments specified by --compress-prog-args. PROG must\
    \ read uncompressed data from standard input and write compressed data to standard\
    \ output when invoked as noted above. Examples: gzip, bzip2, xz, pigz."
  id: compress_prog
  inputBinding:
    prefix: --compress-prog
  type: string
- doc: A string of additional arguments that will be passed to the compression program
    if one is specified with --compress-prog=PROG.  (The arguments '-c -' are still
    passed in addition to explicitly specified arguments.)
  id: compress_prog_args
  inputBinding:
    prefix: --compress-prog-args
  type: string
- doc: "Use SUFFIX as the suffix of the output files after \".fastq\".  A dot before\
    \ the suffix is assumed, unless an empty suffix is provided.  Default: nothing;\
    \ or 'gz' if -z is specified; or PROG if --compress-prog=PROG is specified."
  id: output_suffix
  inputBinding:
    prefix: --output-suffix
  type: string
- doc: "Set the number of worker threads.  This is in addition to the I/O threads.\
    \  Default: number of processors.  Note: if you need FLASH's output to appear\
    \ deterministically or in the same order as the original reads, you must specify\
    \ -t 1 (--threads=1)."
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Do not print informational messages.
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
