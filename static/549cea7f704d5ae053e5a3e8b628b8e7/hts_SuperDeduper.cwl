class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hts_SuperDeduper.cwl
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
- id: arg_start_location
  doc: '[ --start ] arg (=10)              Start location for unique ID (min 1,  max
    10000)'
  type: boolean
  inputBinding:
    prefix: -s
- id: arg_length_max
  doc: '[ --length ] arg (=10)             Length of unique ID (min 1, max 10000)'
  type: boolean
  inputBinding:
    prefix: -l
- id: arg_avg_quality_score_read
  doc: '[ --avg-qual-score ] arg (=30)     Avg quality score to have the read  written
    automatically (min 1, max  10000)'
  type: boolean
  inputBinding:
    prefix: -q
- id: arg_avg_quality_score_consider
  doc: '[ --inform-avg-qual-score ] arg (=5) Avg quality score to consider a read  informative
    (min 1, max 10000)'
  type: boolean
  inputBinding:
    prefix: -a
- id: arg_frequency_log
  doc: '[ --log_freq ] arg (=1000000)      Frequency in which to log duplicates in
    reads, can be used to create a  saturation plot (0 turns off).'
  type: boolean
  inputBinding:
    prefix: -e
outputs: []
cwlVersion: v1.1
baseCommand:
- hts_SuperDeduper
