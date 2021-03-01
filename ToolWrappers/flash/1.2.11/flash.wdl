version 1.0

task Flash {
  input {
    String? interleaved_input
    Int? phred_offset
    Int? min_overlap
    Int? max_overlap
    Int? max_mismatch_density
    Boolean? allow_out_ies
    Int? fragment_len_stddev
    Boolean? cap_mismatch_quals
    Boolean? interleaved_output
    Boolean? tab_delimited_input
    Boolean? tab_delimited_output
    String? output_prefix
    Directory? output_directory
    Boolean? to_stdout
    Boolean? compress
    Int? compress_prog
    String? compress_prog_args
    String? output_suffix
    Int? threads
    Boolean? quiet
    String data_dot
    String format_dot
  }
  command <<<
    flash \
      ~{data_dot} \
      ~{format_dot} \
      ~{if defined(interleaved_input) then ("--interleaved-input " +  '"' + interleaved_input + '"') else ""} \
      ~{if defined(phred_offset) then ("--phred-offset " +  '"' + phred_offset + '"') else ""} \
      ~{if defined(min_overlap) then ("--min-overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(max_overlap) then ("--max-overlap " +  '"' + max_overlap + '"') else ""} \
      ~{if defined(max_mismatch_density) then ("--max-mismatch-density " +  '"' + max_mismatch_density + '"') else ""} \
      ~{if (allow_out_ies) then "--allow-outies" else ""} \
      ~{if defined(fragment_len_stddev) then ("--fragment-len-stddev " +  '"' + fragment_len_stddev + '"') else ""} \
      ~{if (cap_mismatch_quals) then "--cap-mismatch-quals" else ""} \
      ~{if (interleaved_output) then "--interleaved-output" else ""} \
      ~{if (tab_delimited_input) then "--tab-delimited-input" else ""} \
      ~{if (tab_delimited_output) then "--tab-delimited-output" else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if (to_stdout) then "--to-stdout" else ""} \
      ~{if (compress) then "--compress" else ""} \
      ~{if defined(compress_prog) then ("--compress-prog " +  '"' + compress_prog + '"') else ""} \
      ~{if defined(compress_prog_args) then ("--compress-prog-args " +  '"' + compress_prog_args + '"') else ""} \
      ~{if defined(output_suffix) then ("--output-suffix " +  '"' + output_suffix + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    interleaved_input: ") or tab-delimited (see the --tab-delimited-input"
    phred_offset: "The smallest ASCII value of the characters used to\\nrepresent quality values of bases in FASTQ files.\\nIt should be set to either 33, which corresponds\\nto the later Illumina platforms and Sanger\\nplatforms, or 64, which corresponds to the\\nearlier Illumina platforms.  Default: 33."
    min_overlap: "The minimum required overlap length between two\\nreads to provide a confident overlap.  Default:\\n10bp."
    max_overlap: "Maximum overlap length expected in approximately\\n90% of read pairs.  It is by default set to 65bp,\\nwhich works well for 100bp reads generated from a\\n180bp library, assuming a normal distribution of\\nfragment lengths.  Overlaps longer than the maximum\\noverlap parameter are still considered as good\\noverlaps, but the mismatch density (explained below)\\nis calculated over the first max_overlap bases in\\nthe overlapped region rather than the entire\\noverlap.  Default: 65bp, or calculated from the\\nspecified read length, fragment length, and fragment\\nlength standard deviation."
    max_mismatch_density: "Maximum allowed ratio between the number of\\nmismatched base pairs and the overlap length.\\nTwo reads will not be combined with a given overlap\\nif that overlap results in a mismatched base density\\nhigher than this value.  Note: Any occurence of an\\n'N' in either read is ignored and not counted\\ntowards the mismatches or overlap length.  Our\\nexperimental results suggest that higher values of\\nthe maximum mismatch density yield larger\\nnumbers of correctly merged read pairs but at\\nthe expense of higher numbers of incorrectly\\nmerged read pairs.  Default: 0.25."
    allow_out_ies: "Also try combining read pairs in the \\\"outie\\\"\\norientation, e.g.\\nRead 1: <-----------\\nRead 2:       ------------>\\nas opposed to only the \\\"innie\\\" orientation, e.g.\\nRead 1:       <------------\\nRead 2: ----------->\\nFLASH uses the same parameters when trying each\\norientation.  If a read pair can be combined in\\nboth \\\"innie\\\" and \\\"outie\\\" orientations, the\\nbetter-fitting one will be chosen using the same\\nscoring algorithm that FLASH normally uses.\\nThis option also causes extra .innie and .outie\\nhistogram files to be produced."
    fragment_len_stddev: "Average read length, fragment length, and fragment\\nstandard deviation.  These are convenience parameters\\nonly, as they are only used for calculating the\\nmaximum overlap (--max-overlap) parameter.\\nThe maximum overlap is calculated as the overlap of\\naverage-length reads from an average-size fragment\\nplus 2.5 times the fragment length standard\\ndeviation.  The default values are -r 100, -f 180,\\nand -s 18, so this works out to a maximum overlap of\\n65 bp.  If --max-overlap is specified, then the\\nspecified value overrides the calculated value.\\nIf you do not know the standard deviation of the\\nfragment library, you can probably assume that the\\nstandard deviation is 10% of the average fragment\\nlength."
    cap_mismatch_quals: "Cap quality scores assigned at mismatch locations\\nto 2.  This was the default behavior in FLASH v1.2.7\\nand earlier.  Later versions will instead calculate\\nsuch scores as max(|q1 - q2|, 2); that is, the\\nabsolute value of the difference in quality scores,\\nbut at least 2.  Essentially, the new behavior\\nprevents a low quality base call that is likely a\\nsequencing error from significantly bringing down\\nthe quality of a high quality, likely correct base\\ncall."
    interleaved_output: "Write the uncombined pairs in interleaved FASTQ"
    tab_delimited_input: "Assume the input is in tab-delimited format\\nrather than FASTQ, in the format described below in\\n'--tab-delimited-output'.  In this mode you should\\nprovide a single input file, each line of which must\\ncontain either a read pair (5 fields) or a single\\nread (3 fields).  FLASH will try to combine the read\\npairs.  Single reads will be written to the output\\nfile as-is if also using --tab-delimited-output;\\notherwise they will be ignored.  Note that you may\\nspecify \\\"-\\\" as the input file to read the\\ntab-delimited data from standard input."
    tab_delimited_output: "Write output in tab-delimited format (not FASTQ).\\nEach line will contain either a combined pair in the\\nformat 'tag <tab> seq <tab> qual' or an uncombined\\npair in the format 'tag <tab> seq_1 <tab> qual_1\\n<tab> seq_2 <tab> qual_2'."
    output_prefix: "Prefix of output files.  Default: \\\"out\\\"."
    output_directory: "Path to directory for output files.  Default:\\ncurrent working directory."
    to_stdout: "Write the combined reads to standard output.  In\\nthis mode, with FASTQ output (the default) the\\nuncombined reads are discarded.  With tab-delimited\\noutput, uncombined reads are included in the\\ntab-delimited data written to standard output.\\nIn both cases, histogram files are not written,\\nand informational messages are sent to standard\\nerror rather than to standard output."
    compress: "Compress the output files directly with zlib,\\nusing the gzip container format.  Similar to\\nspecifying --compress-prog=gzip and --suffix=gz,\\nbut may be slightly faster."
    compress_prog: "Pipe the output through the compression program\\nPROG, which will be called as `PROG -c -',\\nplus any arguments specified by --compress-prog-args.\\nPROG must read uncompressed data from standard input\\nand write compressed data to standard output when\\ninvoked as noted above.\\nExamples: gzip, bzip2, xz, pigz."
    compress_prog_args: "A string of additional arguments that will be passed\\nto the compression program if one is specified with\\n--compress-prog=PROG.  (The arguments '-c -' are\\nstill passed in addition to explicitly specified\\narguments.)"
    output_suffix: "Use SUFFIX as the suffix of the output files\\nafter \\\".fastq\\\".  A dot before the suffix is assumed,\\nunless an empty suffix is provided.  Default:\\nnothing; or 'gz' if -z is specified; or PROG if\\n--compress-prog=PROG is specified."
    threads: "Set the number of worker threads.  This is in\\naddition to the I/O threads.  Default: number of\\nprocessors.  Note: if you need FLASH's output to\\nappear deterministically or in the same order as\\nthe original reads, you must specify -t 1\\n(--threads=1)."
    quiet: "Do not print informational messages."
    data_dot: "----------------------------------------------------------------------------\\nMANDATORY INPUT"
    format_dot: "-I, --interleaved       Equivalent to specifying both --interleaved-input"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}