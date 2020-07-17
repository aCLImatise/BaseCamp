version 1.0

task HtsAdapterTrimmer {
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
    Boolean? arg_number_max
    Boolean? arg_kmer_size
    Boolean? arg_offset_kmers
    Boolean? arg_max_percent
    Boolean? arg_max_number
    Boolean? arg_check_lengths
    Boolean? arg_min_overlap
    Boolean? trimming_adapter_do
    Boolean? arg_agatcggaagagcacacgtctgaactccagtca_primer
  }
  command <<<
    hts_AdapterTrimmer \
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
      ~{true="-p" false="" arg_number_max} \
      ~{true="-k" false="" arg_kmer_size} \
      ~{true="-r" false="" arg_offset_kmers} \
      ~{true="-e" false="" arg_max_percent} \
      ~{true="-x" false="" arg_max_number} \
      ~{true="-c" false="" arg_check_lengths} \
      ~{true="-o" false="" arg_min_overlap} \
      ~{true="-X" false="" trimming_adapter_do} \
      ~{true="-a" false="" arg_agatcggaagagcacacgtctgaactccagtca_primer}
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
    arg_number_max: "[ --number-of-threads ] arg (=1)   Number of worker threads (min 1, max 8)"
    arg_kmer_size: "[ --kmer ] arg (=8)                Kmer size of the lookup table for the  longer read (min 5, max 64)"
    arg_offset_kmers: "[ --kmer-offset ] arg (=1)         Offset of kmers. Offset of 1, would be  perfect overlapping kmers. An offset of kmer would be non-overlapping kmers  that are right next to each other. Must be greater than 0."
    arg_max_percent: "[ --max-mismatch-errorDensity ] arg (=0.25) Max percent of mismatches allowed in  overlapped section (min 0.0, max 1.0)"
    arg_max_number: "[ --max-mismatch ] arg (=100)      Max number of total mismatches allowed  in overlapped section (min 0, max  10000)"
    arg_check_lengths: "[ --check-lengths ] arg (=20)      Check lengths of the ends (min 5, max  10000)"
    arg_min_overlap: "[ --min-overlap ] arg (=8)         Min overlap required to merge two reads (min 5, max 10000)"
    trimming_adapter_do: "[ --no-fixbases ]                  after trimming adapter, DO NOT use  consensus sequence of paired reads,  only trims adapter sequence"
    arg_agatcggaagagcacacgtctgaactccagtca_primer: "[ --adapter-sequence ] arg (=AGATCGGAAGAGCACACGTCTGAACTCCAGTCA) Primer sequence to trim in SE adapter  trimming, default is truseq ht primer  sequence"
  }
}