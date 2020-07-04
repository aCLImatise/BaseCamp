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
    Boolean? arg_interleaved_fastq
    Boolean? arg_tabdelimited_tab
    Boolean? forces_overwrite_files
    Boolean? output_uncompressed_gzipped
    Boolean? arg_output_fastq
    Boolean? arg_output_interleaved
    Boolean? arg_output_tabdelimited
    Boolean? arg_output_unmapped
    Boolean? arg_supply_default
    Boolean? check_r_pe
    Boolean? arg_kmer_size
    Boolean? arg_proportion_kmer
    Boolean? output_reads_kmer
    Boolean? only_record_hit
  }
  command <<<
    hts_SeqScreener \
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
      ~{true="-s" false="" arg_supply_default} \
      ~{true="-C" false="" check_r_pe} \
      ~{true="-k" false="" arg_kmer_size} \
      ~{true="-x" false="" arg_proportion_kmer} \
      ~{true="-n" false="" output_reads_kmer} \
      ~{true="-r" false="" only_record_hit}
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
    arg_supply_default: "[ --seq ] arg                      Please supply a fasta file - default -  Phix Sequence - default  https://www.ncbi.nlm.nih.gov/nuccore/96 26372"
    check_r_pe: "[ --check-read-2 ]                 Check R2 as well as R1 (pe)"
    arg_kmer_size: "[ --kmer ] arg (=12)               Kmer size of the lookup table (min 5,  max 256)"
    arg_proportion_kmer: "[ --percentage-hits ] arg (=0.25)  Proportion of kmer percentage-hits to  sequence need to happen to discard (min 0.0, max 1.0)"
    output_reads_kmer: "[ --inverse ]                      Output reads that are ABOVE the kmer  hit threshold"
    only_record_hit: "[ --record ]                       Only record the reads that pass the  kmer hit threshold, output all reads"
  }
}