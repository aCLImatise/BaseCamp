version 1.0

task HtsSeqScreener {
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
    Boolean? arg_supply_file
    Boolean? check_r_r
    Boolean? arg_kmer_size
    Boolean? arg_proportion_kmer
    Boolean? output_reads_above
    Boolean? only_record_reads
  }
  command <<<
    hts_SeqScreener \
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
      ~{if (arg_supply_file) then "-s" else ""} \
      ~{if (check_r_r) then "-C" else ""} \
      ~{if (arg_kmer_size) then "-k" else ""} \
      ~{if (arg_proportion_kmer) then "-x" else ""} \
      ~{if (output_reads_above) then "-n" else ""} \
      ~{if (only_record_reads) then "-r" else ""}
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
    arg_supply_file: "[ --seq ] arg                      Please supply a fasta file - default -\\nPhix Sequence - default\\nhttps://www.ncbi.nlm.nih.gov/nuccore/96\\n26372"
    check_r_r: "[ --check-read-2 ]                 Check R2 as well as R1 (pe)"
    arg_kmer_size: "[ --kmer ] arg (=12)               Kmer size of the lookup table (min 5,\\nmax 256)"
    arg_proportion_kmer: "[ --percentage-hits ] arg (=0.25)  Proportion of kmer percentage-hits to\\nsequence need to happen to discard (min\\n0.0, max 1.0)"
    output_reads_above: "[ --inverse ]                      Output reads that are ABOVE the kmer\\nhit threshold"
    only_record_reads: "[ --record ]                       Only record the reads that pass the\\nkmer hit threshold, output all reads"
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_tab = "${in_arg_output_tab}"
    File out_arg_output_unmapped = "${in_arg_output_unmapped}"
  }
}