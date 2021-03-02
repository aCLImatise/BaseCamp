version 1.0

task HtsSuperDeduper {
  input {
    Boolean? _version_print
    Boolean? arg_notes_json
    Boolean? arg_statslog_write
    Boolean? arg_append_stats
    Boolean? one
    Boolean? two
    Boolean? arg_single_end
    Boolean? arg_interleaved_fastq
    Boolean? arg_tabdelimited_input
    Boolean? forces_overwrite_files
    Boolean? output_uncompressed_files
    Boolean? arg_output_fastq
    Boolean? arg_output_interleaved
    File? arg_output_tabdelimited
    File? arg_output_unmapped
    Boolean? arg_start_location
    Boolean? arg_length_max
    Boolean? arg_avg_quality_score_have
    Boolean? arg_avg_quality_score_consider
    Boolean? arg_frequency_log
  }
  command <<<
    hts_SuperDeduper \
      ~{if (_version_print) then "-v" else ""} \
      ~{if (arg_notes_json) then "-N" else ""} \
      ~{if (arg_statslog_write) then "-L" else ""} \
      ~{if (arg_append_stats) then "-A" else ""} \
      ~{if (one) then "-1" else ""} \
      ~{if (two) then "-2" else ""} \
      ~{if (arg_single_end) then "-U" else ""} \
      ~{if (arg_interleaved_fastq) then "-I" else ""} \
      ~{if (arg_tabdelimited_input) then "-T" else ""} \
      ~{if (forces_overwrite_files) then "-F" else ""} \
      ~{if (output_uncompressed_files) then "-u" else ""} \
      ~{if (arg_output_fastq) then "-f" else ""} \
      ~{if (arg_output_interleaved) then "-i" else ""} \
      ~{if (arg_output_tabdelimited) then "-t" else ""} \
      ~{if (arg_output_unmapped) then "-z" else ""} \
      ~{if (arg_start_location) then "-s" else ""} \
      ~{if (arg_length_max) then "-l" else ""} \
      ~{if (arg_avg_quality_score_have) then "-q" else ""} \
      ~{if (arg_avg_quality_score_consider) then "-a" else ""} \
      ~{if (arg_frequency_log) then "-e" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/htstream:1.3.3--h5ca1c16_0"
  }
  parameter_meta {
    _version_print: "[ --version ]                      Version print"
    arg_notes_json: "[ --notes ] arg                    Notes for the stats JSON"
    arg_statslog_write: "[ --stats-file ] arg (=stats.log)  Write to stats file name"
    arg_append_stats: "[ --append-stats-file ] arg        Append to stats file name"
    one: "[ --read1-input ] arg              Read 1 paired end fastq input <space\\nseparated for multiple files>"
    two: "[ --read2-input ] arg              Read 2 paired end fastq input <space\\nseparated for multiple files>"
    arg_single_end: "[ --singleend-input ] arg          Single end read fastq input <space\\nseparated for multiple files>"
    arg_interleaved_fastq: "[ --interleaved-input ] arg        Interleaved fastq input <space\\nseparated for multiple files>"
    arg_tabdelimited_input: "[ --tab-input ] arg                Tab-delimited (tab6) input <space\\nseparated for multiple files>"
    forces_overwrite_files: "[ --force ]                        Forces overwrite of files"
    output_uncompressed_files: "[ --uncompressed ]                 Output uncompressed (not gzipped) files"
    arg_output_fastq: "[ --fastq-output ] arg             Output to Fastq files <PE AND/OR SE\\nfiles>"
    arg_output_interleaved: "[ --interleaved-output ] arg       Output to interleaved fastq files\\n<INTERLEAVED PE AND/OR SE files>"
    arg_output_tabdelimited: "[ --tab-output ] arg               Output to tab-delimited (tab6) file"
    arg_output_unmapped: "[ --unmapped-output ] arg          Output to unmapped sam file"
    arg_start_location: "[ --start ] arg (=10)              Start location for unique ID (min 1,\\nmax 10000)"
    arg_length_max: "[ --length ] arg (=10)             Length of unique ID (min 1, max 10000)"
    arg_avg_quality_score_have: "[ --avg-qual-score ] arg (=30)     Avg quality score to have the read\\nwritten automatically (min 1, max\\n10000)"
    arg_avg_quality_score_consider: "[ --inform-avg-qual-score ] arg (=5)\\nAvg quality score to consider a read\\ninformative (min 1, max 10000)"
    arg_frequency_log: "[ --log_freq ] arg (=1000000)      Frequency in which to log duplicates in\\nreads, can be used to create a\\nsaturation plot (0 turns off)."
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_tabdelimited = "${in_arg_output_tabdelimited}"
    File out_arg_output_unmapped = "${in_arg_output_unmapped}"
  }
}