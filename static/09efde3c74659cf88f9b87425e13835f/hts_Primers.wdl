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
    Boolean? arg_interleaved_fastq
    Boolean? arg_tabdelimited_tab
    Boolean? forces_overwrite_files
    Boolean? output_uncompressed_gzipped
    Boolean? arg_output_fastq
    Boolean? arg_output_interleaved
    Boolean? arg_output_tabdelimited
    Boolean? arg_output_unmapped
    Boolean? p
    Boolean? q
    Boolean? arg_max_hamming
    Boolean? arg_required_number
    Boolean? arg_variable_number
    Boolean? primers_can_seen
    Boolean? cut_primer_sequence
    Boolean? arg_minimum_number
  }
  command <<<
    hts_Primers \
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
      ~{true="-P" false="" p} \
      ~{true="-Q" false="" q} \
      ~{true="-d" false="" arg_max_hamming} \
      ~{true="-e" false="" arg_required_number} \
      ~{true="-l" false="" arg_variable_number} \
      ~{true="-x" false="" primers_can_seen} \
      ~{true="-k" false="" cut_primer_sequence} \
      ~{true="-r" false="" arg_minimum_number}
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
    p: "[ --primers_5p ] arg               5' primers, comma separated list of  sequences, or fasta file"
    q: "[ --primers_3p ] arg               3' primers, comma separated list of  sequences, or fasta file"
    arg_max_hamming: "[ --primer_mismatches ] arg (=4)   Max hamming dist from primer (min 0,  max 10000)"
    arg_required_number: "[ --primer_end_mismatches ] arg (=4) Required number of matching bases at  end of primer (min 0, max 10000)"
    arg_variable_number: "[ --float ] arg (=0)               Variable number of bases preceeding  primer allowed to float"
    primers_can_seen: "[ --flip ]                         Primers can be seen in both  orientiations, tests flip and reorients all reads to the same orientation."
    cut_primer_sequence: "[ --keep ]                         Don't cut off the primer sequence,  leave it as a part of the read"
    arg_minimum_number: "[ --min_primer_matches ] arg (=0)  Minimum number of primers to match to  keep the fragment (0, keep all  fragments, 1 must match either 5' or 3' primer, 2 must match both 5' and 3'  primers)"
  }
}