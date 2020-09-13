version 1.0

task HtsOverlapper {
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
    Boolean? arg_kmer_size
    Boolean? arg_offset_offset
    Boolean? arg_percent_mismatches
    Boolean? arg_max_number
    Boolean? arg_check_lengths
    Boolean? arg_min_overlap
    Boolean? overlapping_readsplit_reads
  }
  command <<<
    hts_Overlapper \
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
      ~{if (arg_kmer_size) then "-k" else ""} \
      ~{if (arg_offset_offset) then "-r" else ""} \
      ~{if (arg_percent_mismatches) then "-e" else ""} \
      ~{if (arg_max_number) then "-x" else ""} \
      ~{if (arg_check_lengths) then "-c" else ""} \
      ~{if (arg_min_overlap) then "-o" else ""} \
      ~{if (overlapping_readsplit_reads) then "-X" else ""}
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
    arg_kmer_size: "[ --kmer ] arg (=8)                Kmer size of the lookup table for the\\nlonger read (min 5, max 64)"
    arg_offset_offset: "[ --kmer-offset ] arg (=1)         Offset of kmers. Offset of 1, would be\\nperfect overlapping kmers. An offset of\\nkmer would be non-overlapping kmers\\nthat are right next to each other. Must\\nbe greater than 0."
    arg_percent_mismatches: "[ --max-mismatch-errorDensity ] arg (=0.25)\\nMax percent of mismatches allowed in\\noverlapped section (min 0.0, max 1.0)"
    arg_max_number: "[ --max-mismatch ] arg (=100)      Max number of total mismatches allowed\\nin overlapped section (min 0, max\\n10000)"
    arg_check_lengths: "[ --check-lengths ] arg (=20)      Check lengths of the ends (min 5, max\\n10000)"
    arg_min_overlap: "[ --min-overlap ] arg (=8)         Min overlap required to merge two reads\\n(min 5, max 10000)"
    overlapping_readsplit_reads: "[ --force-pairs ]                  after overlapping a paired end read,\\nsplit reads in half to output pairs."
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_tab = "${in_arg_output_tab}"
    File out_arg_output_unmapped = "${in_arg_output_unmapped}"
  }
}