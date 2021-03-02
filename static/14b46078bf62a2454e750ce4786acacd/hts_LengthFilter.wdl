version 1.0

task HtsLengthFilter {
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
    Boolean? arg_min_length
    Boolean? arg_maximum_allowed
    Boolean? orphaned_se_reads
    String out
  }
  command <<<
    hts_LengthFilter \
      ~{out} \
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
      ~{if (arg_min_length) then "-m" else ""} \
      ~{if (arg_maximum_allowed) then "-M" else ""} \
      ~{if (orphaned_se_reads) then "-n" else ""}
  >>>
  runtime {
    docker: "None"
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
    arg_min_length: "[ --min-length ] arg (=0)          Min length for acceptable output read\\n(min 1, max 10000), default is unset"
    arg_maximum_allowed: "[ --max-length ] arg (=0)          Maximum allowed length of read,\\neffectively right trims to max-length\\n(min 1, max 10000), default is unset"
    orphaned_se_reads: "[ --no-orphans ]                   Orphaned SE reads will NOT be written"
    out: "-s [ --stranded ]                     If R1 is orphaned, R2 is output in RC "
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_tabdelimited = "${in_arg_output_tabdelimited}"
    File out_arg_output_unmapped = "${in_arg_output_unmapped}"
  }
}