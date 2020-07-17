version 1.0

task HtsQWindowTrim {
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
    Boolean? arg_window_size
    Boolean? arg_threshold_quality
    Boolean? arg_quality_offset
  }
  command <<<
    hts_QWindowTrim \
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
      ~{true="-w" false="" arg_window_size} \
      ~{true="-q" false="" arg_threshold_quality} \
      ~{true="-o" false="" arg_quality_offset}
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
    arg_window_size: "[ --window-size ] arg (=10)        Window size in which to trim (min 1,  max 10000)"
    arg_threshold_quality: "[ --avg-qual-score ] arg (=20)     Threshold for quality score average in  the window (min 1, max 10000)"
    arg_quality_offset: "[ --qual-offset ] arg (=33)        Quality offset for ascii q-score  (default is 33) (min 1, max 10000)"
  }
}