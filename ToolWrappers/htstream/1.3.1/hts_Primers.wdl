version 1.0

task HtsPrimers {
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
    Boolean? p
    Boolean? q
    Boolean? arg_max_hamming
    Boolean? arg_required_number
    Boolean? arg_variable_number
    Boolean? primers_can_seen
    Boolean? cut_primer_sequenceleave
    Boolean? arg_minimum_number
  }
  command <<<
    hts_Primers \
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
      ~{if (p) then "-P" else ""} \
      ~{if (q) then "-Q" else ""} \
      ~{if (arg_max_hamming) then "-d" else ""} \
      ~{if (arg_required_number) then "-e" else ""} \
      ~{if (arg_variable_number) then "-l" else ""} \
      ~{if (primers_can_seen) then "-x" else ""} \
      ~{if (cut_primer_sequenceleave) then "-k" else ""} \
      ~{if (arg_minimum_number) then "-r" else ""}
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
    p: "[ --primers_5p ] arg               5' primers, comma separated list of\\nsequences, or fasta file"
    q: "[ --primers_3p ] arg               3' primers, comma separated list of\\nsequences, or fasta file"
    arg_max_hamming: "[ --primer_mismatches ] arg (=4)   Max hamming dist from primer (min 0,\\nmax 10000)"
    arg_required_number: "[ --primer_end_mismatches ] arg (=4)\\nRequired number of matching bases at\\nend of primer (min 0, max 10000)"
    arg_variable_number: "[ --float ] arg (=0)               Variable number of bases preceeding\\nprimer allowed to float"
    primers_can_seen: "[ --flip ]                         Primers can be seen in both\\norientiations, tests flip and reorients\\nall reads to the same orientation."
    cut_primer_sequenceleave: "[ --keep ]                         Don't cut off the primer sequence,\\nleave it as a part of the read"
    arg_minimum_number: "[ --min_primer_matches ] arg (=0)  Minimum number of primers to match to\\nkeep the fragment (0, keep all\\nfragments, 1 must match either 5' or 3'\\nprimer, 2 must match both 5' and 3'\\nprimers)"
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_tab = "${in_arg_output_tab}"
    File out_arg_output_unmapped = "${in_arg_output_unmapped}"
  }
}