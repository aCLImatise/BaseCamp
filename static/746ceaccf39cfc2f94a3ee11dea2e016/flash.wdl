version 1.0

task Flash {
  input {
    String? fragment_len_stddev
    Boolean? cap_mismatch_quals
    Boolean? interleaved_input
    Boolean? interleaved_output
    Boolean? interleaved
    Boolean? tab_delimited_input
    Boolean? tab_delimited_output
    String? output_prefix
    String? output_directory
    Boolean? to_stdout
    Boolean? compress
    String? compress_prog
    String? compress_prog_args
    String? output_suffix
    String? threads
    Boolean? quiet
    String mates_one_dot_fast_q
    String mates_two_dot_fast_q
  }
  command <<<
    flash \
      ~{mates_one_dot_fast_q} \
      ~{mates_two_dot_fast_q} \
      ~{if defined(fragment_len_stddev) then ("--fragment-len-stddev " +  '"' + fragment_len_stddev + '"') else ""} \
      ~{true="--cap-mismatch-quals" false="" cap_mismatch_quals} \
      ~{true="--interleaved-input" false="" interleaved_input} \
      ~{true="--interleaved-output" false="" interleaved_output} \
      ~{true="--interleaved" false="" interleaved} \
      ~{true="--tab-delimited-input" false="" tab_delimited_input} \
      ~{true="--tab-delimited-output" false="" tab_delimited_output} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{true="--to-stdout" false="" to_stdout} \
      ~{true="--compress" false="" compress} \
      ~{if defined(compress_prog) then ("--compress-prog " +  '"' + compress_prog + '"') else ""} \
      ~{if defined(compress_prog_args) then ("--compress-prog-args " +  '"' + compress_prog_args + '"') else ""} \
      ~{if defined(output_suffix) then ("--output-suffix " +  '"' + output_suffix + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    fragment_len_stddev: "Average read length, fragment length, and fragment standard deviation.  These are convenience parameters only, as they are only used for calculating the maximum overlap (--max-overlap) parameter. The maximum overlap is calculated as the overlap of average-length reads from an average-size fragment plus 2.5 times the fragment length standard deviation.  The default values are -r 100, -f 180, and -s 18, so this works out to a maximum overlap of 65 bp.  If --max-overlap is specified, then the specified value overrides the calculated value. If you do not know the standard deviation of the fragment library, you can probably assume that the standard deviation is 10% of the average fragment length."
    cap_mismatch_quals: "Cap quality scores assigned at mismatch locations to 2.  This was the default behavior in FLASH v1.2.7 and earlier.  Later versions will instead calculate such scores as max(|q1 - q2|, 2); that is, the absolute value of the difference in quality scores, but at least 2.  Essentially, the new behavior prevents a low quality base call that is likely a sequencing error from significantly bringing down the quality of a high quality, likely correct base call."
    interleaved_input: "Instead of requiring files MATES_1.FASTQ and MATES_2.FASTQ, allow a single file MATES.FASTQ that has the paired-end reads interleaved.  Specify \"-\" to read from standard input."
    interleaved_output: "Write the uncombined pairs in interleaved FASTQ format."
    interleaved: "Equivalent to specifying both --interleaved-input and --interleaved-output."
    tab_delimited_input: "Assume the input is in tab-delimited format rather than FASTQ, in the format described below in '--tab-delimited-output'.  In this mode you should provide a single input file, each line of which must contain either a read pair (5 fields) or a single read (3 fields).  FLASH will try to combine the read pairs.  Single reads will be written to the output file as-is if also using --tab-delimited-output; otherwise they will be ignored.  Note that you may specify \"-\" as the input file to read the tab-delimited data from standard input."
    tab_delimited_output: "Write output in tab-delimited format (not FASTQ). Each line will contain either a combined pair in the format 'tag <tab> seq <tab> qual' or an uncombined pair in the format 'tag <tab> seq_1 <tab> qual_1 <tab> seq_2 <tab> qual_2'."
    output_prefix: "Prefix of output files.  Default: \"out\"."
    output_directory: "Path to directory for output files.  Default: current working directory."
    to_stdout: "Write the combined reads to standard output.  In this mode, with FASTQ output (the default) the uncombined reads are discarded.  With tab-delimited output, uncombined reads are included in the tab-delimited data written to standard output. In both cases, histogram files are not written, and informational messages are sent to standard error rather than to standard output."
    compress: "Compress the output files directly with zlib, using the gzip container format.  Similar to specifying --compress-prog=gzip and --suffix=gz, but may be slightly faster."
    compress_prog: "Pipe the output through the compression program PROG, which will be called as `PROG -c -', plus any arguments specified by --compress-prog-args. PROG must read uncompressed data from standard input and write compressed data to standard output when invoked as noted above. Examples: gzip, bzip2, xz, pigz."
    compress_prog_args: "A string of additional arguments that will be passed to the compression program if one is specified with --compress-prog=PROG.  (The arguments '-c -' are still passed in addition to explicitly specified arguments.)"
    output_suffix: "Use SUFFIX as the suffix of the output files after \".fastq\".  A dot before the suffix is assumed, unless an empty suffix is provided.  Default: nothing; or 'gz' if -z is specified; or PROG if --compress-prog=PROG is specified."
    threads: "Set the number of worker threads.  This is in addition to the I/O threads.  Default: number of processors.  Note: if you need FLASH's output to appear deterministically or in the same order as the original reads, you must specify -t 1 (--threads=1)."
    quiet: "Do not print informational messages."
    mates_one_dot_fast_q: ""
    mates_two_dot_fast_q: ""
  }
}