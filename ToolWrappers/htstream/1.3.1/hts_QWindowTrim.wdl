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
    Boolean? arg_interleaved_input
    Boolean? arg_tabdelimited_tab
    Boolean? forces_overwrite_files
    Boolean? output_uncompressed_files
    Boolean? arg_output_fastq
    Boolean? arg_output_interleaved
    File? arg_output_tab
    File? arg_output_unmapped
    Boolean? turns_trimming_left_read
    Boolean? turns_trimming_right_read
    Boolean? arg_window_size
    Boolean? arg_threshold_min
    Boolean? arg_quality_offset
  }
  command <<<
    hts_QWindowTrim \
      ~{if (_version_print) then "-v" else ""} \
      ~{if (arg_notes_stats) then "-N" else ""} \
      ~{if (arg_statslog_write) then "-L" else ""} \
      ~{if (arg_append_stats) then "-A" else ""} \
      ~{if (one) then "-1" else ""} \
      ~{if (two) then "-2" else ""} \
      ~{if (arg_single_end) then "-U" else ""} \
      ~{if (arg_interleaved_input) then "-I" else ""} \
      ~{if (arg_tabdelimited_tab) then "-T" else ""} \
      ~{if (forces_overwrite_files) then "-F" else ""} \
      ~{if (output_uncompressed_files) then "-u" else ""} \
      ~{if (arg_output_fastq) then "-f" else ""} \
      ~{if (arg_output_interleaved) then "-i" else ""} \
      ~{if (arg_output_tab) then "-t" else ""} \
      ~{if (arg_output_unmapped) then "-z" else ""} \
      ~{if (turns_trimming_left_read) then "-l" else ""} \
      ~{if (turns_trimming_right_read) then "-r" else ""} \
      ~{if (arg_window_size) then "-w" else ""} \
      ~{if (arg_threshold_min) then "-q" else ""} \
      ~{if (arg_quality_offset) then "-o" else ""}
  >>>
  parameter_meta {
    _version_print: "[ --version ]                      Version print"
    arg_notes_stats: "[ --notes ] arg                    Notes for the stats JSON"
    arg_statslog_write: "[ --stats-file ] arg (=stats.log)  Write to stats file name"
    arg_append_stats: "[ --append-stats-file ] arg        Append to stats file name"
    one: "[ --read1-input ] arg              Read 1 paired end fastq input <space\\nseparated for multiple files>"
    two: "[ --read2-input ] arg              Read 2 paired end fastq input <space\\nseparated for multiple files>"
    arg_single_end: "[ --singleend-input ] arg          Single end read fastq input <space\\nseparated for multiple files>"
    arg_interleaved_input: "[ --interleaved-input ] arg        Interleaved fastq input <space\\nseparated for multiple files>"
    arg_tabdelimited_tab: "[ --tab-input ] arg                Tab-delimited (tab6) input <space\\nseparated for multiple files>"
    forces_overwrite_files: "[ --force ]                        Forces overwrite of files"
    output_uncompressed_files: "[ --uncompressed ]                 Output uncompressed (not gzipped) files"
    arg_output_fastq: "[ --fastq-output ] arg             Output to Fastq files <PE AND/OR SE\\nfiles>"
    arg_output_interleaved: "[ --interleaved-output ] arg       Output to interleaved fastq files\\n<INTERLEAVED PE AND/OR SE files>"
    arg_output_tab: "[ --tab-output ] arg               Output to tab-delimited (tab6) file"
    arg_output_unmapped: "[ --unmapped-output ] arg          Output to unmapped sam file"
    turns_trimming_left_read: "[ --no-left ]                      Turns off trimming of the left side of\\nthe read"
    turns_trimming_right_read: "[ --no-right ]                     Turns off trimming of the right side of\\nthe read"
    arg_window_size: "[ --window-size ] arg (=10)        Window size in which to trim (min 1,\\nmax 10000)"
    arg_threshold_min: "[ --avg-qual-score ] arg (=20)     Threshold for quality score average in\\nthe window (min 1, max 10000)"
    arg_quality_offset: "[ --qual-offset ] arg (=33)        Quality offset for ascii q-score\\n(default is 33) (min 1, max 10000)"
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_tab = "${in_arg_output_tab}"
    File out_arg_output_unmapped = "${in_arg_output_unmapped}"
  }
}