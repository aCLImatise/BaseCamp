version 1.0

task HtsPolyATTrim {
  input {
    Boolean? _version_print
    Boolean? arg_notes_stats
    Boolean? arg_statslog_write
    Boolean? arg_append_stats
    Boolean? one
    Boolean? two
    Boolean? arg_single_end
    Boolean? arg_interleaved_fastq
    Boolean? arg_tabdelimited_tab
    Boolean? forces_overwrite_files
    Boolean? output_uncompressed_gzipped
    Boolean? arg_output_fastq
    Boolean? arg_output_interleaved
    Boolean? arg_output_tabdelimited
    Boolean? arg_output_unmapped
    Boolean? turns_trimming_left
    Boolean? turns_trimming_right
    Boolean? skip_check_polya
    Boolean? skip_check_polyt
    Boolean? arg_window_size
    Boolean? arg_max_percent
    Boolean? arg_number_windows
    Boolean? arg_min_base
    Boolean? arg_max_size
  }
  command <<<
    hts_PolyATTrim \
      ~{true="-v" false="" _version_print} \
      ~{true="-N" false="" arg_notes_stats} \
      ~{true="-L" false="" arg_statslog_write} \
      ~{true="-A" false="" arg_append_stats} \
      ~{true="-1" false="" one} \
      ~{true="-2" false="" two} \
      ~{true="-U" false="" arg_single_end} \
      ~{true="-I" false="" arg_interleaved_fastq} \
      ~{true="-T" false="" arg_tabdelimited_tab} \
      ~{true="-F" false="" forces_overwrite_files} \
      ~{true="-u" false="" output_uncompressed_gzipped} \
      ~{true="-f" false="" arg_output_fastq} \
      ~{true="-i" false="" arg_output_interleaved} \
      ~{true="-t" false="" arg_output_tabdelimited} \
      ~{true="-z" false="" arg_output_unmapped} \
      ~{true="-l" false="" turns_trimming_left} \
      ~{true="-r" false="" turns_trimming_right} \
      ~{true="-j" false="" skip_check_polya} \
      ~{true="-k" false="" skip_check_polyt} \
      ~{true="-w" false="" arg_window_size} \
      ~{true="-e" false="" arg_max_percent} \
      ~{true="-c" false="" arg_number_windows} \
      ~{true="-M" false="" arg_min_base} \
      ~{true="-x" false="" arg_max_size}
  >>>
  parameter_meta {
    _version_print: "[ --version ]                      Version print"
    arg_notes_stats: "[ --notes ] arg                    Notes for the stats JSON"
    arg_statslog_write: "[ --stats-file ] arg (=stats.log)  Write to stats file name"
    arg_append_stats: "[ --append-stats-file ] arg        Append to stats file name"
    one: "[ --read1-input ] arg              Read 1 paired end fastq input <space  separated for multiple files>"
    two: "[ --read2-input ] arg              Read 2 paired end fastq input <space  separated for multiple files>"
    arg_single_end: "[ --singleend-input ] arg          Single end read fastq input <space  separated for multiple files>"
    arg_interleaved_fastq: "[ --interleaved-input ] arg        Interleaved fastq input <space  separated for multiple files>"
    arg_tabdelimited_tab: "[ --tab-input ] arg                Tab-delimited (tab6) input <space  separated for multiple files>"
    forces_overwrite_files: "[ --force ]                        Forces overwrite of files"
    output_uncompressed_gzipped: "[ --uncompressed ]                 Output uncompressed (not gzipped) files"
    arg_output_fastq: "[ --fastq-output ] arg             Output to Fastq files <PE AND/OR SE  files>"
    arg_output_interleaved: "[ --interleaved-output ] arg       Output to interleaved fastq files  <INTERLEAVED PE AND/OR SE files>"
    arg_output_tabdelimited: "[ --tab-output ] arg               Output to tab-delimited (tab6) file"
    arg_output_unmapped: "[ --unmapped-output ] arg          Output to unmapped sam file"
    turns_trimming_left: "[ --no-left ]                      Turns off trimming of the left side of  the read"
    turns_trimming_right: "[ --no-right ]                     Turns off trimming of the right side of the read"
    skip_check_polya: "[ --skip_polyA ]                   Skip check for polyA sequence"
    skip_check_polyt: "[ --skip_polyT ]                   Skip check for polyT sequence"
    arg_window_size: "[ --window-size ] arg (=6)         Window size in which to trim (min 1,  max 10000)"
    arg_max_percent: "[ --max-mismatch-errorDensity ] arg (=0.29999999999999999) Max percent of mismatches allowed in  overlapped section (min 0.0, max 1.0)"
    arg_number_windows: "[ --perfect-windows ] arg (=1)     Number perfect match windows needed  before a match is reported  (min 1, max 10000)"
    arg_min_base: "[ --min-trim ] arg (=5)            Min base pairs trim for AT tail (min 1, max 10000)"
    arg_max_size: "[ --max-trim ] arg (=30)           Max size a polyAT can be (min 0, max  10000)"
  }
}