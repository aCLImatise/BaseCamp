class: CommandLineTool
id: ../../../hts_AdapterTrimmer.cwl
inputs:
- id: _version_print
  doc: '[ --version ]                      Version print'
  type: boolean
  inputBinding:
    prefix: -v
- id: arg_notes_stats
  doc: '[ --notes ] arg                    Notes for the stats JSON'
  type: boolean
  inputBinding:
    prefix: -N
- id: arg_statslog_write
  doc: '[ --stats-file ] arg (=stats.log)  Write to stats file name'
  type: boolean
  inputBinding:
    prefix: -L
- id: arg_append_stats
  doc: '[ --append-stats-file ] arg        Append to stats file name'
  type: boolean
  inputBinding:
    prefix: -A
- id: one
  doc: '[ --read1-input ] arg              Read 1 paired end fastq input <space  separated
    for multiple files>'
  type: boolean
  inputBinding:
    prefix: '-1'
- id: two
  doc: '[ --read2-input ] arg              Read 2 paired end fastq input <space  separated
    for multiple files>'
  type: boolean
  inputBinding:
    prefix: '-2'
- id: arg_single_end
  doc: '[ --singleend-input ] arg          Single end read fastq input <space  separated
    for multiple files>'
  type: boolean
  inputBinding:
    prefix: -U
- id: arg_interleaved_fastq
  doc: '[ --interleaved-input ] arg        Interleaved fastq input <space  separated
    for multiple files>'
  type: boolean
  inputBinding:
    prefix: -I
- id: arg_tabdelimited_tab
  doc: '[ --tab-input ] arg                Tab-delimited (tab6) input <space  separated
    for multiple files>'
  type: boolean
  inputBinding:
    prefix: -T
- id: forces_overwrite_files
  doc: '[ --force ]                        Forces overwrite of files'
  type: boolean
  inputBinding:
    prefix: -F
- id: output_uncompressed_gzipped
  doc: '[ --uncompressed ]                 Output uncompressed (not gzipped) files'
  type: boolean
  inputBinding:
    prefix: -u
- id: arg_output_fastq
  doc: '[ --fastq-output ] arg             Output to Fastq files <PE AND/OR SE  files>'
  type: boolean
  inputBinding:
    prefix: -f
- id: arg_output_interleaved
  doc: '[ --interleaved-output ] arg       Output to interleaved fastq files  <INTERLEAVED
    PE AND/OR SE files>'
  type: boolean
  inputBinding:
    prefix: -i
- id: arg_output_tabdelimited
  doc: '[ --tab-output ] arg               Output to tab-delimited (tab6) file'
  type: boolean
  inputBinding:
    prefix: -t
- id: arg_output_unmapped
  doc: '[ --unmapped-output ] arg          Output to unmapped sam file'
  type: boolean
  inputBinding:
    prefix: -z
- id: arg_number_max
  doc: '[ --number-of-threads ] arg (=1)   Number of worker threads (min 1, max 8)'
  type: boolean
  inputBinding:
    prefix: -p
- id: arg_kmer_size
  doc: '[ --kmer ] arg (=8)                Kmer size of the lookup table for the  longer
    read (min 5, max 64)'
  type: boolean
  inputBinding:
    prefix: -k
- id: arg_offset_kmers
  doc: '[ --kmer-offset ] arg (=1)         Offset of kmers. Offset of 1, would be  perfect
    overlapping kmers. An offset of kmer would be non-overlapping kmers  that are
    right next to each other. Must be greater than 0.'
  type: boolean
  inputBinding:
    prefix: -r
- id: arg_max_percent
  doc: '[ --max-mismatch-errorDensity ] arg (=0.25) Max percent of mismatches allowed
    in  overlapped section (min 0.0, max 1.0)'
  type: boolean
  inputBinding:
    prefix: -e
- id: arg_max_number
  doc: '[ --max-mismatch ] arg (=100)      Max number of total mismatches allowed  in
    overlapped section (min 0, max  10000)'
  type: boolean
  inputBinding:
    prefix: -x
- id: arg_check_lengths
  doc: '[ --check-lengths ] arg (=20)      Check lengths of the ends (min 5, max  10000)'
  type: boolean
  inputBinding:
    prefix: -c
- id: arg_min_overlap
  doc: '[ --min-overlap ] arg (=8)         Min overlap required to merge two reads
    (min 5, max 10000)'
  type: boolean
  inputBinding:
    prefix: -o
- id: trimming_adapter_do
  doc: '[ --no-fixbases ]                  after trimming adapter, DO NOT use  consensus
    sequence of paired reads,  only trims adapter sequence'
  type: boolean
  inputBinding:
    prefix: -X
- id: arg_agatcggaagagcacacgtctgaactccagtca_primer
  doc: '[ --adapter-sequence ] arg (=AGATCGGAAGAGCACACGTCTGAACTCCAGTCA) Primer sequence
    to trim in SE adapter  trimming, default is truseq ht primer  sequence'
  type: boolean
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- hts_AdapterTrimmer
